import { LightningElement , track } from 'lwc';
import contactFetch from '@salesforce/apex/ContactImperative.fetchContactById';
import updateContact from '@salesforce/apex/ContactImperative.updateContactEmail';

export default class LwcImperative extends LightningElement {
    contactIdJs;
    @track contactJs;
    contactError;

    handleContactName(event) {
        this.contactIdJs = event.detail.value;
    }

    handleFetchContact() {
        if (this.contactIdJs) {
            contactFetch({ contactId: this.contactIdJs })
                .then((result) => {
                    this.contactJs = result;
                    this.contactError = undefined;
                })
                .catch((error) => {
                    this.contactJs = undefined;
                    this.contactError = error;
                    console.log('Error: ',error);
                })
        } else {
            alert('Please enter contact Id');
            this.contactJs = undefined;
        }
    }

    handleEmailChange(event) {
        //Contact contactJs => Apex Contact
        this.contactJs.Email = event.detail.value;
    }

    handleUpdateContact() {
        updateContact({ con: this.contactJs })
            .then((result) => {
                if (result === 'success') {
                    alert('contact updated successfully');
                } else if (result === 'failed') {
                    alert('contact updated failed');
                }
            })
            .catch((error) => {
                console.log('Exception: ', error);
            })
    }
}