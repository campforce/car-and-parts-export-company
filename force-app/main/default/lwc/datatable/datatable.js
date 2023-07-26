import { LightningElement, wire} from 'lwc';
import getContacts from '@salesforce/apex/tableController.getContacts'
const COLUMNS = [
    { label: 'First Name', fieldName: 'FirstName'},
    { label: 'Last Name', fieldName: 'LastName'},
    { label: 'Phone Number', fieldName: 'Phone', type: 'Phone' },
    { label: 'Email Address', fieldName: 'Email', type: 'Email' }
]
export default class Datatable extends LightningElement {
    tableData
    columns = COLUMNS
    @wire(getContacts)
    contactsHandler({data, error}) {
        if(data) {
            console.log(data)
            this.tableData = data
        }
        if(error) {
            console.error(error)
        }
    }
}