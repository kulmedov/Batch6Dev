import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import { createRecord } from 'lightning/uiRecordApi';

export default class LdsCreateRecord extends LightningElement {
    accountName;
    handleName(event) {
        this.accountName = event.detail.value;
    }
    handleAccountCreate() {
        const fields = {};
        fields[NAME_FIELD.fieldApiName] = this.accountName;
        const accountRecord = {
            apiName: ACCOUNT_OBJECT.objectApiName,
            fields
        }
        createRecord(accountRecord)
            .then(accountRecord => { 
                console.log('Account created with id: ', accountRecord.id);
            })
            .catch(error => {
                console.log('Errors: ', JSON.stringify(error));
            })
    }
}