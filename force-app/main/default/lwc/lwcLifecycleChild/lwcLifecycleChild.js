import { LightningElement , api } from 'lwc';

export default class LwcLifecycleChild extends LightningElement {
    @api publicPropertyChild = 'This is default child message';
    privatePropertyChild = 'This is private in child';

    handleButtonClick() {
        this.privatePropertyChild = this.privatePropertyChild + ' random text';
    }

    constructor() { 
        super();
        console.log('----------------------------');
        console.log('Line 14 child-> This constructor is inside Child');

        console.log("Line 16 child-> publicPropertyChild: ", this.publicPropertyChild);
        console.log('Line 17 child-> privatePropertyChild: ', this.privatePropertyChild);
    }

    connectedCallback() {
        console.log('----------------------------');
        console.log('Line 22 child -> this is connected callback');
        console.log("Line 23 child-> publicPropertyChild: " , this.publicPropertyChild);
    }

    renderedCallback() {
        console.log('----------------------------');
        console.log('Line 28 child-> This is renderedCallback'); alert('renderedCallbackInvoked');
        //Uncomment below line to see callback hell in action
        //this.privatePropertyChild = this.privatePropertyChild + ' random text';
        console.log('Line 31 child -> privatePropertyChild: ' + this.privatePropertyChild);
    }

    disconnectedCallback() {
        console.log('----------------------------');
        console.log('Line 36 child-> This is disconnectedCallback in child'); 
    }
}