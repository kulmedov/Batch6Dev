import { LightningElement } from 'lwc';

export default class LwcEventChildThree extends LightningElement {
    handleSendDataClick() {
        let divElement = this.template.querySelector("div[data-id=buttonDivChildThree]");
        let customEvent = new CustomEvent('senddata',{bubbles: false});
        divElement.dispatchEvent(customEvent);
    }

    handleSendDataChildThreeData1(event) {
        console.log('Inside handleSendDataChildThreeData1');
    }

    handleSendDataChildThreeData2(event) {
        console.log('Inside handleSendDataChildThreeData2');
    }

    handleSendDataChildThreeData3(event) {
        console.log('Inside handleSendDataChildThreeData3');
    }
}