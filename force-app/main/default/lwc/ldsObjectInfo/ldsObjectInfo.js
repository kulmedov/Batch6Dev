import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import {
    getObjectInfo,
    getObjectInfos,
    getPicklistValues,
    getPicklistValuesByRecordType
} from 'lightning/uiObjectInfoApi';

export default class LdsObjectInfo extends LightningElement {
    @wire(getObjectInfo, { objectApiName: ACCOUNT_OBJECT })
    getObjectInfoFunction({ data, error }) {
        if (data) {
            console.log('Account object data: ', data);
        } else if(error){
            console.log('Account object error: ', error);
        }
    }

    @wire(getObjectInfos, { objectApiNames: [ ACCOUNT_OBJECT, CONTACT_OBJECT ] })
    getObjectInfosFunction({ data, error }) {
        if (data) {
            console.log('Account/Contact object data: ', data);
        } else if(error){
            console.log('Account/Contact object error: ', error);
        }
    }

    @wire(getPicklistValues, { recordTypeId: '012000000000000AAA', fieldApiName: INDUSTRY_FIELD })
    getPicklistValuesFunction({ data, error }) {
        if (data) {
            console.log('Account.Industry picklist data: ', data);
        } else if(error){
            console.log('Account.Industry picklist error: ', error);
        }
    }

    @wire(getPicklistValuesByRecordType, { recordTypeId: '012000000000000AAA', objectApiName: ACCOUNT_OBJECT })
    getPicklistValuesByRecordTypeFunction({ data, error }) {
        if (data) {
            console.log('Account picklist data: ', data);
        } else if(error){
            console.log('Account picklist error: ', error);
        }
    }
}