import { LightningElement , wire , track } from 'lwc';
import searchLeads from '@salesforce/apex/LeadSearchController.searchLeads';

export default class LwcWireParameterFunction extends LightningElement {
    enteredValue = '';
    keywordJS = '';

    @track leadsData;
    @track leadsError;

    @wire(searchLeads, { keyword: '$keywordJS' })
    leadsFetch({ data, error }) {
        if (data) {
            console.log('Leads Received: ', data);
            this.leadsData = data;
            this.leadsError = undefined;
        }else if (error) {
            this.leadsData = undefined;
            this.leadsError = error;
        }
    }

    //keywordJS => james  ; change in keywordJS invokes apex
    //keywordJS => Burt ; change in keywordJS invokes Apex

    //Update user search text in enteredValue variable
    handleSearchText(event) {
        this.enteredValue = event.detail.value;
    }

    //This function is invoked on button click
    handleSearchLeads() {
        //Update to keywordJS will reinvoke the wire method as keywordJS is associated with Wire
        this.keywordJS = this.enteredValue;
    }
}