public with sharing class accountInsertController {
    
     /**
     * Create the LWC Account Inserter component and put it on Auto-Part Export App page.
     * Controller Class: insertAccount
     * @author Gul Bayram
     */

@AuraEnabled

public static id createAccount(String accName, String accPhone){

    Account acc = new Account (Name=accName, Phone=accPhone);

    insert acc;

    return acc.id;

 }

}