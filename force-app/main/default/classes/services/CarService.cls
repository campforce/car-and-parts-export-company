public with sharing class CarService {
  public static void ValidatePurchaseDate(List <Car__c> cars){
      system.debug('Hello, I am Car Service');
      for (Car__c car : cars) {
      if (car.Purchase_Date__c < Date.today()) {
          car.addError('Purchase Date must be today or later.');
      }
  }
}
}