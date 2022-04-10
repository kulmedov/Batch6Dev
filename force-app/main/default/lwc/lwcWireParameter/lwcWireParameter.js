import { LightningElement , wire } from 'lwc';
import searchLeads from '@salesforce/apex/LeadSearchController.searchLeads';

export default class LwcWireParameter extends LightningElement {
    enteredValue = '';
    keywordJS = '';

    //invoke apex with the parameter keyword = entered text
    //wire is reactive and will invoke Apex for every change in keywordJS
    @wire(searchLeads, { keyword: '$keywordJS' })
    leadsList;

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