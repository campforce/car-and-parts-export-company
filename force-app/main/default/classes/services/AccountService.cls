public with sharing class AccountService {

    /**
     * Demonstrative method to show where put trigger logic.
     * 
     * @param oldMap old accounts
     * @param newMap new accounts
     * @author belekomurzakov
     */
    public static void demonstrativeMethod(Map<Id, Account> oldMap, Map<Id, Account> newMap) {
        // your logic is here.
       
    }
    
    
      /**\\Write the trigger that checks if the acccount phone is empty or not when created, 
     * if empty, populate wit the following phone number:
     * @param newAccount new accounts
     * @author bektur-baisyshbek
     */
   public static void accountPhoneUpdate(List <Account> accList) {
        
       for(Account acc: accList){
           if(acc.Phone==null){
             acc.Phone='+1 222 333 4444';
           }
       }
       
    }
    
    
}