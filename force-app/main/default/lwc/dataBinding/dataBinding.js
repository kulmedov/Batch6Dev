import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    str = "This is coming from JS";
    account = {
        "Name": "Alphabet",
        "Location": "San Fransisco"
    };
    num1 = 4;
    num2 = 5;
    num3 = this.num1 + this.num2; //'this' represents the instance of the LWC loaded in the structure

    handleTextChange(event) {
        console.log(event);
        this.str = event.detail.value;
        console.log(event.target.label);
        console.log(event.detail.value);
    }
}