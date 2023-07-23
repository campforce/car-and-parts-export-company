public with sharing class CarService {
    public CarService() {
		system.debug('test');
    }
    /**
     * Calculation of transportation 
     * @param List<CarList> newCarList
     * @author Sama
     */
    public static void calculationTransp (List<Car__c> newCarList){
        system.debug(newCarList);
    }
}