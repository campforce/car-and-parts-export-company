/**
     * Write the validation rule using trigger on Car object
     * 
     * @param Car__c
     * @param Purchase_Date__c
     * @author zulaikaabdyrakhmanova
     */


trigger CarTrigger on Car__c (before insert, before update, before delete, after insert, after update, after delete) {
    new CarTriggerHandler().run();
}