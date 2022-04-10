import { LightningElement } from 'lwc';

export default class LwcEventParentBubbles extends LightningElement {
    handleSendDataParentChildOne1(event) {
        console.log('Inside handleSendDataParentChildOne1');
    }
    handleSendDataParentChildOne2(event) {
        console.log('Inside handleSendDataParentChildOne2');
    }

    
    handleSendDataParentChildTwo1(event) {
        console.log('Inside handleSendDataParentChildTwo1');
    }
    handleSendDataParentChildTwo2(event) {
        console.log('Inside handleSendDataParentChildTwo2');
    }
    

    handleSendDataParentChildThree1(event) {
        console.log('Inside handleSendDataParentChildThree1');
    }
    handleSendDataParentChildThree2(event) {
        console.log('Inside handleSendDataParentChildThree2');
    }
}