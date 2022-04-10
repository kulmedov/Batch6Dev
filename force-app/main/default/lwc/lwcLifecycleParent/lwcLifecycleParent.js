import { LightningElement , api } from 'lwc';

export default class LwcLifecycleParent extends LightningElement {

    privatePropertyParent = 'This is private in parent';
    @api publicPropertyParent = 'This is default public in parent';

    constructor() {
        super();
        console.log('----------------------------');
        console.log('Line 11 parent-> I am inside constructor');
        
        let childComponent = this.template.querySelector("c-lwc-lifecycle-child");
        console.log('Line 14 parent-> childComponent', childComponent);

        console.log('Line 16 parent-> publicPropertyParent: ', this.publicPropertyParent);
        console.log('Line 17 parent-> privatePropertyParent: ', this.privatePropertyParent);
    }

    connectedCallback() {
        console.log('----------------------------');
        console.log('Line 22 parent-> This is connected callback');
        let childComponent = this.template.querySelector("c-lwc-lifecycle-child");
        console.log('Line 24 parent-> childComponent', childComponent);
        console.log('Line 25 parent-> publicPropertyParent: ', this.publicPropertyParent);
    }

    renderedCallback() {
        console.log('----------------------------');
        console.log('Line 30 parent-> This is renderedCallback');
        let childComponent = this.template.querySelector("c-lwc-lifecycle-child");
        console.log('Line 32 parent-> childComponent', childComponent);
    }

    disconnectedCallback() {
        console.log('----------------------------');
        console.log('Line 37 parent-> This is disconnectedCallback in parent'); 
    }
}