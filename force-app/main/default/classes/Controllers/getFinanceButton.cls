public with sharing class getFinanceButton {
    @AuraEnabled
public static void getFinanceRecordsAsPDF(Id accountId){
    List<Account> accountWithFinance = [SELECT Account.Id, Account.Name, (SELECT FinanceTransactionNumber, TotalAmountWithTax FROM FinanceTransactions) FROM Account WHERE Id = :accountId LIMIT 1];
       // List<Account> accountsWithFinance = [SELECT Account.Name, (SELECT FinanceTransactionNumber, TotalAmountWithTax FROM FinanceTransactions) FROM Account LIMIT 100];
       // Check if the Account with FinanceTransactions is found
    if (accountWithFinance != null && accountWithFinance[0].FinanceTransactions != null && !accountWithFinance[0].FinanceTransactions.isEmpty()) {
    String htmlData = '<table><tr><th>Transaction Number</th><th>Amount With Tax</th></tr>';
    
    // Iterate over the transactions and add data to the HTML
    for (FinanceTransaction trans : accountWithFinance[0].FinanceTransactions) {
        String transactionData = '<tr><td>' + trans.FinanceTransactionNumber + '</td><td>' + trans.TotalAmountWithTax + '</td></tr>';
        htmlData += transactionData;
    }
    htmlData += '</table>';

    // Step 3: Convert HTML to PDF using pdflayer API
    HttpRequest req = new HttpRequest();
    //String Endpoint = 'https://api.pdflayer.com/api/convert';
    req.setEndpoint('http://api.pdflayer.com/api/convert?access_key=7cf8c5d2c0fc6824bbf5a4d5ef26c2b0');
    req.setMethod('POST');
    req.setHeader('Content-Type', 'application/json');
    req.setBody('{"document_html": "' + htmlData + '"}');
    
    HttpResponse res = new Http().send(req);
    if (res.getStatusCode() == 200) {
        // Step 4: Process the PDF response
        // Convert the API response (PDF) to a Blob or save it as a file
       // Blob pdfBlob = res.getBodyAsBlob();
        Blob pdfBlob = Blob.toPdf(htmlData);
        //Blob pdfBlob = res.getBodyAsBlob();
        //Blob pdfContent = Blob.toPdf(pdfText);
        System.debug(pdfBlob);
        EncodingUtil.base64Encode(pdfBlob);
    
        // Step 5: Save the PDF file as an Attachment
        // Create a new Attachment object and populate its fields
        Attachment attachment = new Attachment();
        attachment.Name = 'Transactions.pdf';
        attachment.Body = pdfBlob;
        attachment.ContentType = 'application/pdf';
        attachment.ParentId = accountWithFinance[0].Id; // replace this with the actual Parent record Id
        System.debug(attachment);

        if (Schema.sObjectType.Attachment.isCreateable() && Schema.sObjectType.Attachment.fields.Body.isCreateable() && Schema.sObjectType.Attachment.fields.Name.isCreateable()) {
            insert attachment;
        } else {
           System.debug('Insufficient CRUD permissions to insert Attachment.');
         }
        }
    }
  }
}