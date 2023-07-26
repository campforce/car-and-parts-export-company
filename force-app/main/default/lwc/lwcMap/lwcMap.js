import { LightningElement, api, wire, track } from 'lwc';

import { getRecord } from 'lightning/uiRecordApi';

import BILLING_COUNTRY from '@salesforce/schema/Container__c.Shipping_Country__c';

import BILLING_CITY from '@salesforce/schema/Container__c.Shipping_City__c';

import BILLING_STREET from '@salesforce/schema/Container__c.Shipping_Street__c';

import BILLING_POSTALCODE from '@salesforce/schema/Container__c.Shipping_Postal_Code__c';

export default class NSP_Location_Map extends LightningElement {

    @api recordId;

    @track mapMarkers;

    @wire(getRecord, {

        recordId: '$recordId',

        fields: [BILLING_COUNTRY, BILLING_CITY, BILLING_STREET, BILLING_POSTALCODE]

    })

    fetchConteiners({data, error}){

        if(data){

            this.mapMarkers = [

                {

                    location: {

                        Country: data.fields.Shipping_Country__c.value,

                        City: data.fields.Shipping_City__c.value,

                        Street: data.fields.Shipping_Street__c.value,

                        PostalCode: data.fields.Shipping_Postal_Code__c.value

                    }

                }

            ];

        }else if(error){

            console.log('error' + error);

        }

    }

}