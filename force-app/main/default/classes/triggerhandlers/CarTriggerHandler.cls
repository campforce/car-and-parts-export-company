public with sharing class CarTriggerHandler extends TriggerHandler {
    private List<Car__c> newCarList;
    private List<Car__c> oldCarList;
    private Map<Id, Car__c> newCarListMap;
    private Map<Id, Car__c> oldCarListMap;

    public CarTriggerHandler() {
        this.newCarList = (List<Car__c>) Trigger.new;
        this.oldCarList = (List<Car__c>) Trigger.old;
        this.newCarListMap = (Map<Id, Car__c>) Trigger.newMap;
        this.oldCarListMap = (Map<Id, Car__c>) Trigger.oldMap;
    }

        public override void beforeInsert() {
            CarService.calculationTransp(this.newCarList);
       
    }
    
    public override void beforeUpdate() {
             CarService.calculationTransp(this.newCarList);
    }
    
    public override void afterInsert() {
     
             
    }
  
    
    public override void afterUpdate() {
            
    }
}