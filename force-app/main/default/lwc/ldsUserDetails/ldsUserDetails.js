import { LightningElement , wire } from 'lwc';
import Id from '@salesforce/user/Id';
import UserNameFld from '@salesforce/schema/User.Name';
import UserEmailFld from '@salesforce/schema/User.Email';
import UserIsActiveFld from '@salesforce/schema/User.IsActive';
import { getRecord } from 'lightning/uiRecordApi';

export default class LdsUserDetails extends LightningElement {
    userId = Id;
    currentUserName;
    currentUserEmailId;
    currentIsActive;


    @wire(getRecord, { recordId: Id, fields: [UserNameFld, UserEmailFld, UserIsActiveFld] })
    userDetails({ error, data }) {
        if (data) {
            this.currentIsActive = data.fields.IsActive.value;
            this.currentUserName = data.fields.Name.value;
            this.currentUserEmailId = data.fields.Email.value;
        } else if (error) {
            alert('Error: ' + error);
        }
    }
}