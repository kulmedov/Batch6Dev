import { LightningElement, wire } from 'lwc';
import fetchContactsJs from '@salesforce/apex/contactClass.fetchContacts';

export default class LwcContactWire extends LightningElement {
    @wire(fetchContactsJs)
    contacts;
}