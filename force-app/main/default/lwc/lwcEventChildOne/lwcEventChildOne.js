import { LightningElement } from 'lwc';

export default class LwcEventChildOne extends LightningElement {
    handleSendDataClick() {
        let divElement = this.template.querySelector("div[data-id=buttonDivChildOne]");
        let customEvent = new CustomEvent('senddata',{bubbles: true, composed: true});
        divElement.dispatchEvent(customEvent);
    }

    handleSendDataChildOneData1(event) {
        console.log('Inside handleSendDataChildOneData1');
    }

    handleSendDataChildOneData2(event) {
        console.log('Inside handleSendDataChildOneData2');
    }

    handleSendDataChildOneData3(event) {
        console.log('Inside handleSendDataChildOneData3');
    }
}