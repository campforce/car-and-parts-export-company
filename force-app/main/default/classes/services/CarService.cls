public with sharing class CarService {

    //Atash 
    //Write the trigger on Car object to send email notification to the Driver and Master 
    //the total cost is more than 2000
    //Test Class: CarService Test

    public static void afterInsert(list<Car__c> cars){
        
        set<id> carIdWhereTotalCostGreater2000 = new set<id>();
        
        for(Car__c c: cars){
            if(c.total_cost__c > 2000){
                carIdWhereTotalCostGreater2000.add(c.id); 
            }
        }
        
        list<Car__c> carWithtotalCostGreateThen2000 = [Select name, driver__c,driver__r.name,master__r.name, master__c, total_cost__c, driver__r.email, master__r.email from Car__c where id in:carIdWhereTotalCostGreater2000];
        
        for(Car__c c:carWithtotalCostGreateThen2000){
            if(c.driver__c != null && c.driver__r.email != null){
                sendEmail(c.driver__r.email, c.driver__r.name, c.name, c.total_cost__c);
            }
            
            if(c.master__c != null && c.master__r.email != null){
                sendEmail(c.master__r.email, c.master__r.name, c.name, c.total_cost__c);
            }
        }       
    }
    
    public static void afterUpdate(list<Car__c> cars, Map<id,Car__c> oldRecord){
        
        set<id> carIdWhereTotalCostGreater2000 = new set<id>();
        
        for(Car__c c: cars){
            if(c.total_cost__c > 2000 && oldRecord.get(c.id).total_cost__c<=2000){
                carIdWhereTotalCostGreater2000.add(c.id); 
            }
        }
        
        list<Car__c> carWithtotalCostGreateThen2000 = [Select name, total_cost__c, driver__r.email, master__r.email, driver__r.name, master__r.name from Car__c where id in:carIdWhereTotalCostGreater2000];
        
        for(Car__c c:carWithtotalCostGreateThen2000){
            if(c.driver__r.email != null){
                sendEmail(c.driver__r.email, c.driver__r.name, c.name, c.total_cost__c);
            }
            
            if(c.master__c != null && c.master__r.email != null){
                sendEmail(c.master__r.email, c.master__r.name, c.name, c.total_cost__c);
            } 
        }       
    }
    
    public static void sendEmail(string emailAddress, string reciepientName, string carName, decimal totalCost){
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = new String[] { emailAddress};
            message.subject = 'Car Total Cost Greater Then 2000';
        message.plainTextBody = 'Dear ' + reciepientName + ', ' + carName + ' total cost is ' + totalCost; 
        Messaging.SingleEmailMessage[] messages = 
            new List<Messaging.SingleEmailMessage> {message};
                Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
    }
}