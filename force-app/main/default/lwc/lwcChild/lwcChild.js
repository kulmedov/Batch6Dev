import { LightningElement , api } from 'lwc';

export default class LwcChild extends LightningElement {
    @api message = 'This is inside child component';

    handleButtonClick() {
        let divElement = this.template.querySelector(".green");
        //querySelector returns the first matched element with ".green" class
        console.log('Query: ', divElement);
        //This will get div elemnt only from child component and not parent due to shadow DOM boundary
    }

    @api childInvocableFunction(information) {
        alert('Information received is: '+information);
    }
}