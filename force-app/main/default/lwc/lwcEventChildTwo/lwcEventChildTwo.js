import { LightningElement } from 'lwc';

export default class LwcEventChildTwo extends LightningElement {
    handleSendDataClick() {
        let divElement = this.template.querySelector("div[data-id=buttonDivChildTwo]");
        let customEvent = new CustomEvent('senddata',{bubbles: true, composed: false});
        divElement.dispatchEvent(customEvent);
    }

    handleSendDataChildTwoData1(event) {
        console.log('Inside handleSendDataChildTwoData1');
    }

    handleSendDataChildTwoData2(event) {
        console.log('Inside handleSendDataChildTwoData2');
    }

    handleSendDataChildTwoData3(event) {
        console.log('Inside handleSendDataChildTwoData3');
    }
}