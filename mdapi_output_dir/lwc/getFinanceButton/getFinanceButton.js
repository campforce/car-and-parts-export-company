import { LightningElement, api } from 'lwc';
import getFinanceRecordsAsPDF from '@salesforce/apex/getFinanceButton.getFinanceRecordsAsPDF';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class GetFinanceButton extends LightningElement {
    @api recordId; // This attribute will hold the Account Id from the utility bar context

      handleGetFinance() {
        getFinanceRecordsAsPDF({accountId: '001DC00000YpsVXYAZ'})
            .then(result => {     
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Finance PDF generated and saved successfully',
                            variant: 'success',
                        })
                    );
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error',
                        message: 'An error occurred while generating the Finance PDF: ' + error.body.message,
                        variant: 'error',
                    })
                );
            });
    }
}
