/**
 * Created by omurzakov on 20.08.2022.
 */

@isTest
public class CarServiceTest {
    @isTest
    static void testPurchaseDateValidation() {
        // Test data
        Date pastDate = Date.today().addDays(-1);
        Date futureDate = Date.today().addDays(1);
        contact con=new Contact(LastName='Japarov');
        insert con;
        // Create a Car record with a past Purchase Date
        Car__c carWithPastDate = new Car__c(Name = 'Test Car', Purchase_Date__c = pastDate, Driver__c=con.Id);

        // Create a Car record with a future Purchase Date
        Car__c carWithFutureDate = new Car__c(Name = 'Test Car', Purchase_Date__c = futureDate, Driver__c=con.Id);

        // Test the trigger logic for the past date
        Test.startTest();
        try {
            insert carWithPastDate;
            // If the trigger is working correctly, the above insert should throw an exception
            System.assert(false, 'Expected exception not thrown.');
        } catch (DmlException e) {
            // Verify that the error message is correct
            System.assertEquals('Purchase Date must be today or later.', e.getDmlMessage(0));
        }
        Test.stopTest();

        // Test the trigger logic for the future date
        
        insert carWithFutureDate;
        

        // Verify that the car with the future date was inserted without errors
        System.assertEquals(1, [SELECT COUNT() FROM Car__c WHERE Id = :carWithFutureDate.Id]);
    }
}