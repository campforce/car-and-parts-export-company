private with sharing class GetFinanceButton {
    @AuraEnabled(cacheable=true)
    public static void getFinanceRecordsAsPDF() {
        // Step 1: Retrieve Finance transaction records
        if (Schema.sObjectType.Account.isAccessible()) {
             List<Account> accountsWithFinance = [SELECT Account.Name, (SELECT Name, TotalAmountWithTax FROM FinanceTransactions__r) FROM Account LIMIT 100];
        } else {
            break;
        }
             // Your logic to retrieve Finance transaction records goes here
       // List<FinanceTransaction> transactions = [SELECT Account.Name,(SELECT FinanceTransaction.Name FROM FinanceTransaction WITH SECURITY_ENFORCED)FROM Account LIMIT 100];
        //[SELECT Name, TotalAmountWithTax FROM FinanceTransaction WITH SECURITY_ENFORCED];

        // Step 2: Convert transactions to JSON
        String jsonData = '[';

        // Iterate over the transactions and add data to the JSON
        for (Account account : accountsWithFinance) {
            for (FinanceTransaction transaction : account.FinanceTransactions__r) {
                String transactionData = '{ "name": "' + transaction.Name + '", "amount": "' + transaction.TotalAmountWithTax + '" },';
                jsonData += transactionData;
            }
        }
        jsonData = jsonData.removeEnd(',') + ']';

        // Step 3: Convert JSON to PDF using PDFShift API
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.pdfshift.io/v3/convert/pdf');
        req.setMethod('POST');
        req.setHeader( '69a5eb2ed11f46dab98017ac5549cb78');  // Replace <your-api-key> with your actual API key
        req.setHeader('Content-Type', 'application/json');
        req.setBody('{"html": "' + jsonData + '"}');  // Replace with your actual HTML content

        HttpResponse res = new Http().send(req);
        if (res.getStatusCode() == 200) {
            // Step 4: Process the PDF response

            // Convert the API response (PDF) to a Blob or save it as a file
            Blob pdfBlob = res.getBodyAsBlob();

            // Step 5: Save the PDF file
            // Create a new Attachment object and populate its fields
            ContentVersion attachment = new ContentVersion();
            attachment.Title = 'Transactions.pdf';
            attachment.VersionData = pdfBlob;
            attachment.PathOnClient = 'Transactions.pdf';

            if (Schema.sObjectType.Con.isCreateable()) {
                insert attachment;
            } else {
                // Handle the case where the user does not have access to FinanceTransaction object
            }
    
    }
}
}