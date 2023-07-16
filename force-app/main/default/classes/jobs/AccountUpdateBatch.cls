global class AccountUpdateBatch implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('SELECT Id, Name FROM Account WHERE Name = \'Test\'');
    }

    global void execute(Database.BatchableContext BC, List<sObject> scope) {
        for(sObject s : scope) {
            Account a = (Account)s;
            a.Name = 'Updated';
        }
        update scope;
    }

    global void finish(Database.BatchableContext BC) {
        // Post-processing operations can be added here
    }
}