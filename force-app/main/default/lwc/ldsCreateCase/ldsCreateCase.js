import { LightningElement } from 'lwc';

export default class LdsCreateCase extends LightningElement {
    strCaseId;
    handleSuccess(event){
     this.strCaseId = event.detail.id;   
     console.log(this.newCaseId);
    }
}