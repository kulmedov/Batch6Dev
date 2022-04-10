import { LightningElement } from 'lwc';

export default class LwcLifecycleErrorParent extends LightningElement {

    errorCallback(error, stack) {
        alert('Something went wrong. Please contact you administrator.');
        debugger;
        console.log('Error: ', error);
        console.log('Stack: ', stack);
    }
}