public with sharing class tableController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        string recId = [SELECT Id, Name, SobjectType FROM RecordType Where Name = 'Client'] [0].Id;
        return [SELECT FirstName, LastName, Phone, Email from Contact WHERE RecordTypeId = : recId];
    }
}