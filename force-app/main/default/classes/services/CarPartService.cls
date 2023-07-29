public with sharing class CarPartService {
    public static void makeContainerTrue(List <Car_Part__c> carPartNewList) {
            
         /*List<Car_Part__c> carPartsToUpdate =[Select Id, Name from Car_Part__c];*/

          for (Car_Part__c carPart : carPartNewList)  {
        // Check if the container field is selected (assuming 'Container__c' is the API name of the container field)
        if (carPart.Container__c != null) {
            // Set the isExport field to true (assuming 'isExport__c' is the API name of the isExport field)
            carPart.Is_Export__c = true;
            /*carPartsToUpdate.add(carPart);*/
        }
    }    /*// Update the records with the updated 'isExport' field value
    update carPartsToUpdate;*/
}
}