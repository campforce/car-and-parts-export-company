/**
 * Created by omurzakov on 20.08.2022.
 */

@isTest
private class CarPartTriggerTest {
    @isTest
    static void testTriggerOnInsert() {
        // Create a new car part with the container selected
       
        
        Account acc=new Account(Name='Japarov');
        insert acc;
        contact con=new Contact(LastName='Japarov');
        insert con;
        Car__c car = new Car__c(Name = 'Test Car', Car_Cost__c = 20000, Comission__c = 18000, Driver__c=con.Id);
        insert car;
        Container__c cont=new Container__c(Account__c=acc.Id);
        insert cont;
            
        Car_Part__c carPart = new Car_Part__c(Is_Export__c= true, Container__c=cont.Id,Car__c=car.Id);

        // Insert the test data
        
        insert carPart;
        

        // Retrieve the updated record to verify the change
        carPart = [SELECT Id, Name, Is_Export__c FROM Car_Part__c WHERE Id = :carPart.Id];

        // Assertions
        System.assertEquals(true, carPart.Is_Export__c, 'isExport should be true for the inserted record');
    }
}