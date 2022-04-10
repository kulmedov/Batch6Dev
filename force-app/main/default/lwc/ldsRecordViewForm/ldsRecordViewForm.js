import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import BILLING_ADDRESS_FIELD from '@salesforce/schema/Account.BillingAddress';

export default class LdsRecordViewForm extends LightningElement {
    @api recordId;
    @api objectApiName;

    accountNameField = NAME_FIELD;
    accountPhoneField = PHONE_FIELD;
    accountWebsiteField = WEBSITE_FIELD;
    accountBillingAddressField = BILLING_ADDRESS_FIELD;

    connectedCallback() {
        console.log('recordId: '+this.recordId);
        console.log('objectApiName: '+this.objectApiName);
    }
}