@isTest
public class CarServiceTest {
    @isTest
    static void testCommissionCostExceedsCarCost() {
        // Create a Car record with Commission Cost greater than Car Cost
        Contact con = new Contact (LastName = 'Alan');
        insert con;
        
        Car__c car = new Car__c(Name = 'Test Car', Car_Cost__c = 20000, Comission__c = 25000,Driver__c= con.Id);

        // Insert the car using the DML operation
        Test.startTest();
        try {
            insert car;
            // If the validation works correctly, the above insert should throw an exception
            System.assert(false, 'Expected exception not thrown.');
        } catch (DmlException e) {
            // Verify that the error message is correct
            System.assertEquals('Commission cost cannot exceed the car cost.', e.getDmlMessage(0));
        }
        Test.stopTest();
    }

    @isTest
    static void testCommissionCostLessThanCarCost() {
        // Create a Car record with Commission Cost less than Car Cost
         Contact con = new Contact (LastName = 'Alan');
        insert con;
        Car__c car = new Car__c(Name = 'Test Car', Car_Cost__c = 20000, Comission__c = 18000, Driver__c=con.Id);

        // Insert the car using the DML operation
        Test.startTest();
        insert car;
        Test.stopTest();

        // Verify that the car was successfully inserted without errors
        System.assertEquals(1, [SELECT COUNT() FROM Car__c WHERE Id = :car.Id]);
    }
}