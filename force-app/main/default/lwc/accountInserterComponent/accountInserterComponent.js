import { LightningElement } from 'lwc';

     /**
     * Create the LWC Account Inserter component and put it on Auto-Part Export App page.
     * Controller Class: insertAccount
     * @author Gul Bayram
     */


import getAccounts from '@salesforce/apex/accountInsertController.createAccount'

export default class AccountInserterComponent extends LightningElement {

    nameInput = "";

    phoneInput = "";
  
    accountInsertedId="";
  
  
  
    nameChangehandler(event) {
  
      this.nameInput = event.target.value;
  
    }
  
  
  
    phoneChangehandler(event) {
  
      this.phoneInput = event.target.value;
  
    }
  
  
  
    clickHandler(){    
  
      getAccounts({
  
      accName:this.nameInput,
  
      accPhone:this.phoneInput}
  
      ).then((data)=>{
  
          this.accountInsertedId=data
  
      })
  
       
  
  }
  
  
  
  }
  
  
