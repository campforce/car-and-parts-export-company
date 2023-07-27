@IsTest
private class CarServiceTest {
   @TestSetup
    static void createCarRecords() {List<Car__c> listOfCar = new List<Car__c>();
        Contact driver = new Contact ();
        driver.RecordTypeId  = '01201000000uZDnAAM';
        driver.LastName = 'Paul';
        insert driver;
            Car__c car = new Car__c();
            car.Status__c = 'Done';
            car.Name = 'testNegative';
            car.Driver__c = driver.Id;
            car.Weight__c = 3500; 
            car.Distance__c = 100;
            listOfCar.add(car);

           Car__c car1 = new Car__c();
            car1.Name = 'testPositiveWithoutFee';
            car1.Driver__c = driver.Id;
            car1.Weight__c = 3000; 
            car1.Distance__c = 80;
            listOfCar.add(car1);

           Car__c car2 = new Car__c();
            car2.Name = 'testPositiveWithFee';
            car2.Driver__c = driver.Id;
            car2.Weight__c = 4000; 
            car2.Distance__c = 110;
            listOfCar.add(car2);

        insert listOfCar;

    }

    @IsTest
    static void testNegative() {
       List<Car__c> allCars = [SELECT Id, Status__c, Weight__c, Distance__c, Transportation__c FROM Car__c where name='testNegative'];
       system.assertEquals (allCars[0].Transportation__c, null);
}
      @IsTest
    static void testPositiveWithoutFee() {
       List<Car__c> allCars = [SELECT Id, Status__c, Weight__c, Distance__c, Transportation__c FROM Car__c where name='testPositiveWithoutFee'];
       system.assertEquals (allCars[0].Transportation__c, 150);
}
      @IsTest
    static void testPositiveWithFee() {
       List<Car__c> allCars = [SELECT Id, Status__c, Weight__c, Distance__c, Transportation__c FROM Car__c where name='testPositiveWithFee'];
       system.assertEquals (allCars[0].Transportation__c, 233.33333333333333333333333333333335);
}
}