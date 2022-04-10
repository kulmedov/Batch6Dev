import { LightningElement, track } from 'lwc';

export default class Decorators extends LightningElement {
    //String => No track needed
    accountName = 'Google Inc'; 

    //Number => No track needed
    totalEmployees = 10;

    //Boolean => No track needed
    isActive = true;
    
    //Object => Track needed
    @track account = {
        "Name": "Google Inc",
        "Location":"SF"
    };

    //Array => Track needed
    @track contacts = [
        { "firstName": "John" },
        { "firstName": "Cindy"}
    ]
    
    handleTextChange(event) {
        this.account.Name = event.detail.value;
        this.accountName = event.detail.value;
    }
}