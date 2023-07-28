import { LightningElement, wire } from 'lwc';
import getAccountList from '@salesforce/apex/AccountListController.getAccountList';

const COLUMNS = [
    { label: 'Account Name', fieldName: 'Name' },
    { label: 'Industry', fieldName: 'Industry' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' },
    { label: 'Website', fieldName: 'Website', type: 'url' },
];

export default class AccountDatatabel extends LightningElement {
    columns = COLUMNS;
    accounts = [];

    @wire(getAccountList)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data.map((record) => ({
                Id: record.Id,
                Name: record.Name,
                Industry: record.Industry,
                Phone: record.Phone,
                Website: record.Website,
            }));
        } else if (error) {
            console.error('Error loading accounts:', error);
        }
    }
}

