public with sharing class AccountListController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name, Industry, Phone, Website FROM Account];
    }
}
