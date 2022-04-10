import { LightningElement, api, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import REV_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import {
    getRecord,
    getFieldValue,
    getFieldDisplayValue
} from 'lightning/uiRecordApi';

export default class LdsGetRecord extends LightningElement {
    @api recordId;

    accountName;
    accountType;
    accountRevenue;
    accountDisplayName;
    accountDisplayType;
    accountDisplayRevenue;

    fields = [NAME_FIELD, TYPE_FIELD, REV_FIELD];

    @wire(getRecord, { recordId: '$recordId', fields: '$fields' })
    getRecordFunction({ data, error }) {
        if (data) {
            console.log('Account data: ', data);
            this.accountName = getFieldValue(data, NAME_FIELD);
            this.accountDisplayName = getFieldDisplayValue(data, NAME_FIELD);
            this.accountType = getFieldValue(data, TYPE_FIELD);
            this.accountDisplayType = getFieldDisplayValue(data, TYPE_FIELD);
            this.accountRevenue = getFieldValue(data, REV_FIELD);
            this.accountDisplayRevenue = getFieldDisplayValue(data, REV_FIELD);
        }else if (error) {
            console.log('Account error: ', error);
        }
    }
}