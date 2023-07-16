@isTest
private with sharing class AccountUpdateBatchTest {

    static testMethod void testBatch() {
        // Setup test data
        List<Account> accounts = new List<Account>();
        for(Integer i=0; i<10; i++) {
            accounts.add(new Account(Name='Test'));
        }
        insert accounts;

        // Start test
        Test.startTest();

        // Run the batch
        AccountUpdateBatch b = new AccountUpdateBatch();
        ID batchprocessid = Database.executeBatch(b);

        // Stop test
        Test.stopTest();

        // Verify
        List<Account> updatedAccounts = [SELECT Id, Name FROM Account WHERE Name = 'Updated'];
        System.assertEquals(10, updatedAccounts.size(), 'All accounts should be updated');
    }
}