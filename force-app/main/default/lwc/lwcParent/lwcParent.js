import { LightningElement } from 'lwc';

export default class LwcParent extends LightningElement {
    handleButtonClick() {
        debugger;
        let divElement = this.template.querySelector(".green");
        console.log('Div element by css: ', divElement);

        let firstPElement = this.template.querySelector("p");
        console.log('Pagaraph element by name: ', firstPElement);

        let pElements = this.template.querySelectorAll("p");
        console.log("P Elements: ", pElements);

        for (let i = 0; i < pElements.length; i++){
            console.log(pElements[i].outerText);
        }
        debugger;

        let pThirdElement = this.template.querySelector("p[data-id=two]");
        console.log('Third Element: ', pThirdElement.outerText);

        let childComponent = this.template.querySelector("c-lwc-child");
        childComponent.childInvocableFunction('Invoked from parent');
    }
}