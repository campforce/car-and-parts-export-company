public with sharing class CarController1 {
    @AuraEnabled(cacheable=true)
    public static List<Car__c> getCarsByName(String carName) {
        String searchTerm = '%' + carName + '%';
        return [SELECT Name, Distance__c, Is_Paid__c FROM Car__c WHERE Name LIKE :searchTerm];
    }
}

/*public with sharing class accountInsertController {

@AuraEnabled

public static id createAccount(String accName, String accPhone){

    Account acc = new Account (Name=accName, Phone=accPhone);

    insert acc;

    return acc.id;

 }

}*/