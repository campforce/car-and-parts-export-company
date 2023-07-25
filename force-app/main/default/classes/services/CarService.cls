public with sharing class CarService {
    public CarService() {
        system.debug('test');
    }
    /**
     * Calculation of transportation 
     * @param List<CarList> newCarList
     * @author Sama
     */


    public static void calculationTransp(List<Car__c> newCarList) {
        for (Car__c car : newCarList) {
            if (!validateInitialConditions(car)) {
                System.debug('Transportation field not updated due to invalid initial conditions.');
                continue;
            }

            Decimal totalCost = calculateTotalCost(car.Weight__c, car.Distance__c);
            car.Transportation__c = totalCost;
            system.debug (totalCost);
        }
    }

    private static Boolean validateInitialConditions(Car__c car) {
        if (car.Status__c != 'Done' && car.Weight__c > 0 && car.Distance__c > 0) {
            return true;
         }
         return false;
    }

     private static Decimal calculateTotalCost(Decimal weight, Decimal distance) {
         Integer fixedCost = 150;
         Decimal additionalFee = 0;

         if (weight > 3000) {
             additionalFee += ((weight - 3000) / 1000) * 50;
         }

         if (distance > 80) {
             additionalFee += ((distance - 80) / 45) * 50;
         }

         Decimal totalCost = fixedCost + additionalFee;
         return totalCost;
     }
}