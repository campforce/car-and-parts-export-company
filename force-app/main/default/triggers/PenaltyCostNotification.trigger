/**
     * Write the trigger on Car object, whenever the penalty cost is more than 100, then the email notification to the Driver and Master
     * 
     * @param Car__c
     * @param Penalty_Cost__c
     * @author zulaikaabdyrakhmanova
     */




trigger PenaltyCostNotification on Car__c (after update) {
    
    List<String> driverEmails= new List<String>();
    List<String> masterEmails= new List<String>();
    
    Map<Id, Decimal> carPenaltyCosts = new Map<Id, Decimal>();
    for(Car__c car:Trigger.new){
        if(car.Penalty_Cost__c > 100){
           carPenaltyCosts.put(car.Id, car.Penalty_Cost__c);
            driverEmails.add(car.Driver__c);
            masterEmails.add(car.Master__c);
        }
    }

}