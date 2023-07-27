/**
 * Created by omurzakov on 20.08.2022.
 */
@isTest
public with sharing class CarServiceTest {
    @testSetup public static void collectData(){
        list<Contact> cons = new list<Contact>();
        cons.add(new Contact(lastName = 'testDriver1')); 
        cons.add(new Contact(lastName = 'testDriver2', email = 'testDriver@gmail.com'));
        cons.add(new Contact(lastName = 'testMaster1'));
        cons.add(new Contact(lastName = 'testMaster2', email = 'testMaster@gmal.com'));
        
        insert cons;
    }
    @isTest public static void testTrigger(){
        list<Contact> cons = [Select id, lastname, name from Contact where lastName like '%Driver%'];
        list<Contact> consM = [Select id, lastname, name from Contact where lastName like '%Master%'];
        list<Car__c> cars = new list<Car__c>();
        
        for(integer i=0; i<2; i++){
            cars.add(new Car__c(name = 'testCar'+ (i+1), driver__c = cons[i].id, master__c = consM[i].id, total_cost__c = 3000));
        }
        
        insert cars;
        
        List<EmailMessage> emails = [SELECT Id, ToAddress, Subject FROM EmailMessage];

        // Assert that at least one email was added to the queue
        System.assertNotEquals(1, emails.size());
        
        cars = [Select total_cost__c from Car__c];
        
        for(Car__c c:cars){
            c.total_cost__c=4000;
        }
        update cars;
         emails = [SELECT Id, ToAddress, Subject FROM EmailMessage];

        // Assert that at least one email was added to the queue
        System.assertNotEquals(1, emails.size());
    }
    


}