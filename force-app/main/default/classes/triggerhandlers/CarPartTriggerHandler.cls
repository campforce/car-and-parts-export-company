public with sharing class CarPartTriggerHandler {
    public CarPartTriggerHandler() {
        
    }
    public static void beforeInsert(list<Car_part__c> newCarParts){
        set<id>contId = new set<id>();
        for(car_part__c carp:newCarParts){
            if(carp.container__c !=null){
                contId.add(carp.container__c);
            }
        }
        
        list<Container__c> conts = [Select id, name, (Select id, name from Car_parts__r) from Container__c where id in:contID];
        
        integer count;
        
        for(Container__c cont:conts){
            count=0;
            for(car_part__c carp:newCarParts){
                if(cont.id == carp.container__c){
                    count++;
                    if(cont.car_parts__r.size()+count >10){
                        carp.container__c.addError('A container can have a maximum of 10 car parts.');                    
                    }
                }
            }            
        }       
    }
    
    public static void beforeUpdate(list<Car_part__c> newCarParts){
        List<Car_part__c> numberOfCarParts = [Select Id from Car_Part__c 
                                              where Container__c=:newCarParts[0].Container__c];
        
        if(numberOfCarParts.size()>10){
            newCarParts[0].addError('A container size can not exceed. 10');
        }     
    }           
}