import { LightningElement , api} from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';

export default class LdsRecordForm extends LightningElement {
    @api recordId;
    @api objectApiName = ACCOUNT_OBJECT;

    fields = [NAME_FIELD, TYPE_FIELD];
}