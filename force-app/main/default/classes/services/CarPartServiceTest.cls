@IsTest(SeeAllData=false)
private class CarPartServiceTest {

    /**
     *Test class: Write the trigger when Account inserrted with Type='Hot', create the task to owner
     *  Class: insertTaskToOwner
     * @author Adina
     */       
 @testSetup
 public static void collectData(){
     Account acc = new Account(name = 'testAccount');
     insert acc;
     
     acc = [Select id from Account];
     
     Contact con =  new Contact(lastName = 'testContact');
     insert con;
     
     con = [Select id from Contact];
     
     Car__c car = new Car__c(name = 'testCar', driver__c = con.id);
     insert car;
     
     Container__c cont = new Container__c(account__c = acc.id);
     insert cont;        
     
 }
 
 @isTest
 public static void testScenario(){
     
     Container__c cont = [Select id, name from Container__c];
     
     Car__c car = [Select id from Car__c];
     
     Car_part__c carp = new Car_part__c(container__c = cont.id, car__c = car.id);
     insert carp;
     
     List<EmailMessage> emails = [SELECT Id FROM EmailMessage];
     
     System.assertNotEquals(0, emails.size());
 }
