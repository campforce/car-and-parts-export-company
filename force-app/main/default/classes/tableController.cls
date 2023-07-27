public with sharing class tableController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT FirstName, LastName, Phone, Email from Contact WHERE RecordTypeId = '0125t000000jErjAAE'];
    }
}