trigger CarTrigger on Car__c (before insert, before update, before delete, after insert ,after update, after delete, after undelete)  {
CarTriggerHandler carTG = new CarTriggerHandler();
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            carTG.afterInsert(Trigger.new);
        }else if(Trigger.isUpdate){
            carTG.afterUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}