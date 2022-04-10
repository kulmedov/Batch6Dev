import { LightningElement } from 'lwc';
import templateOne from './templateOne.html';
import templateTwo from './templateTwo.html';

export default class LwcRender extends LightningElement {
    templateOneHtml = true;

    render() {
        if (this.templateOneHtml) {
            return templateOne;
        } else {
            return templateTwo;
        }
    }

    handleTemplateChange() {
        this.templateOneHtml = !this.templateOneHtml;
    }
}