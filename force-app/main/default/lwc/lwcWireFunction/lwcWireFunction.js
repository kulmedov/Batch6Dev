import { LightningElement, wire } from 'lwc';
import fetchLeadsJs from '@salesforce/apex/WebComponentController.fetchLeads';
import apexError from '@salesforce/apex/WebComponentController.apexErrorMethod';

export default class LwcWireFunction extends LightningElement {

    //WebComponentController.fetchLeads
    leadsData;
    leadsError;

    //WebComponentController.apexErrorMethod
    leadsExceptionData;
    leadsExceptionError;

    @wire(fetchLeadsJs)
    leadsFetch({ data, error }) { //data and error and explicitly stored in JS variable to use

        //Returned valeus is stored in data
        //if we want to use the data anywhere make sure to store it
        if (data) {
            console.log(data);
            this.leadsData = data;
            this.leadsError = undefined;
        } else if (error) {
            this.leadsError = error;
            this.leadsData = undefined;
        }
    }

    @wire(apexError)
    leadsErrorFetch({ error, data }) {
        if (data) {
            this.leadsExceptionData = data;
            this.leadsExceptionError = undefined;
        } else if (error) {
            console.log(error);
            this.leadsExceptionData = undefined;
            this.leadsExceptionError = error;
        }
    }
}