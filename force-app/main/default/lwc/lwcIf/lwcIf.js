import { LightningElement } from 'lwc';

export default class LwcIf extends LightningElement {
    showSection = true;

    handleCheckBoxChange(event) {
        this.showSection = event.detail.checked;
    }
}