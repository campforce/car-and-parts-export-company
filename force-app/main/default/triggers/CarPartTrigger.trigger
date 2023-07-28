trigger CarPartTrigger on Car_Part__c (before insert, before update) {
    
    CarPartTriggerHandler.beforeInsert(Trigger.new);
    CarPartTriggerHandler.beforeUpdate(Trigger.new);
    
}