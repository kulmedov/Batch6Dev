import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {
    textOne;
    textTwo;

    handleTextOneChange(event) {
        this.textOne = event.detail.value;
    }

    handleTextTwoChange(event) {
        this.textTwo = event.detail.value;
    }

    get totalStr() {
        return this.textOne + ' ' + this.textTwo;
    }
}