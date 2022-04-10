import { LightningElement, api } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import BILLING_ADDRESS_FIELD from '@salesforce/schema/Account.BillingAddress';
import TYPE_FIELD from '@salesforce/schema/Account.Type';


export default class LdsRecordEditForm extends LightningElement {
    @api recordId;
    @api objectApiName = ACCOUNT_OBJECT;

    accountNameField = NAME_FIELD;
    accountPhoneField = PHONE_FIELD;
    accountWebsiteField = WEBSITE_FIELD;
    accountBillingAddressField = BILLING_ADDRESS_FIELD;
    accountTypeField = TYPE_FIELD;

    handleSuccess(event) {
        alert('record save successfully for account with Id : '+event.detail.id);
    }

    handleError(event) {
        alert('record did not save successfully');
    }
}