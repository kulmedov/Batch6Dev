import { LightningElement, wire } from 'lwc';
import fetchLeadsJs from '@salesforce/apex/WebComponentController.fetchLeads';
import apexError from '@salesforce/apex/WebComponentController.apexErrorMethod';

export default class LwcWire extends LightningElement {
    @wire(fetchLeadsJs)
    leadsList;
    //leadsList.data => all lead records are populated in data; error = undefined
    //leadsList.error => if any error encountered error is populated; data = undefined

    @wire(apexError)
    leadsErrorMethod;
}