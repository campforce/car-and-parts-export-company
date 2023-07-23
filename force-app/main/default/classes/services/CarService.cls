public with sharing class CarService {
   public static void validateCommissionCost(List<Car__c> cars) {
        
       system.debug('Trigger Run');
        for (Car__c car : cars) {
               if (car.Comission__c > car.Car_Cost__c) {
                   system.debug('Commission is Bigger');
                    car.Comission__c.addError('Commission cost cannot exceed the car cost.');
                }
    }
        
    }
}