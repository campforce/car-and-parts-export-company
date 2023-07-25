import { LightningElement,track } from 'lwc';

import getCarsByName from '@salesforce/apex/CarController1.getCarsByName';

export default class CarSearcher extends LightningElement {
    @track carName = '';
    @track cars;
    columns = [
        { label: 'Car Name', fieldName: 'Name' },
        { label: 'Distance', fieldName: 'Distance__c' },
        { label: 'Is Paid', fieldName: 'Is_Paid__c', type: 'boolean' },
    ];

    handleCarNameChange(event) {
        this.carName = event.target.value;
    }

    handleSearch() {
        getCarsByName({ carName: this.carName })
            .then(result => {
                this.cars = result;
            })
            .catch(error => {
                console.error('Error fetching car records:', error);
            });
    }
}