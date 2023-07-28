public class WeeklyPenaltyAndStorageCost implements Database.Batchable<SObject>, Database.AllowsCallouts, Schedulable {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        Date today = Date.today();
        Date lastWeekStartDate = today.addDays(-7);
        Date lastWeekEndDate = today.addDays(-1);

        String query = 'SELECT Id, Penalty_Cost__c, Storage_Cost__c FROM Car__c ' +
                       'WHERE CreatedDate >= :lastWeekStartDate AND CreatedDate <= :lastWeekEndDate';

        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext BC, List<Car__c> scope) {

        Decimal totalPenaltyCost = 0;
        Decimal totalStorageCost = 0;

        for (Car__c car : scope) {
            totalPenaltyCost += car.Penalty_Cost__c != null ? car.Penalty_Cost__c : 0;
            totalStorageCost += car.Storage_Cost__c != null ? car.Storage_Cost__c : 0;
        }

        sendEmailToCEO(totalPenaltyCost, totalStorageCost);
    }

    public void finish(Database.BatchableContext BC) {
    }

    private void sendEmailToCEO(Decimal totalPenaltyCost, Decimal totalStorageCost) {
        String emailSubject = 'Weekly Car Payment Summary';
        String emailBody = 'Dear CEO,\n\n';
        emailBody += 'Here is the summary of car payments for the last week:\n\n';
        emailBody += 'Total Penalties Paid: $' + totalPenaltyCost + '\n';
        emailBody += 'Total Storage Payments: $' + totalStorageCost + '\n\n';
        emailBody += 'Regards,\nYour Salesforce System';

        String recipientAddress = 'abaidal671@gmail.com';

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new List<String>{recipientAddress});
        email.setSubject(emailSubject);
        email.setPlainTextBody(emailBody);

        // Send the email
        Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{email});
    }

    // Implement the Schedulable interface
    public void execute(SchedulableContext sc) {
        // Run the batch job when the scheduler executes
        Database.executeBatch(new WeeklyPenaltyAndStorageCost());
    }
}