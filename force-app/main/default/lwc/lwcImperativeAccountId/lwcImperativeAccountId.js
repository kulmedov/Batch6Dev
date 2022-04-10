import { LightningElement , track } from 'lwc';
import getAccounts from '@salesforce/apex/FetchAccountId.getAccounts';
import fetchAccount from '@salesforce/apex/FetchAccountId.fetchAccount';
import updateAccount from '@salesforce/apex/FetchAccountId.updateAccount';

export default class LwcImperativeAssignment extends LightningElement {
    showAccounts = false;
    @track accountList;
    accountIdjs='';

    handleShowAccount() {
        getAccounts()
            .then((result) => {
                this.showAccounts = true;
                this.accountList = result;
                console.log(result);
            })
            .catch((error) => {
                alert('Error: '+ error.body.message);
            })
    }

    handleHideAccount() {
        this.showAccounts = false;
        this.accountList = undefined;
    }

    handleAccountId(event) {
        this.accountIdjs = event.detail.value;
    }

    handleFetchAccount() {
        fetchAccount({ accountId: this.accountIdjs })
            .then((result) =>{
                this.accountJs = result;
            })
            .catch((error) => {
                alert('Error: '+ error.body.message);
            })
    }

    handleUpdateAccount() {
        let siteInput = this.template.querySelector("lightning-input[data-name=accountsite]");
        this.accountJs.Site = siteInput.value;
        updateAccount({ acc: this.accountJs })
            .then((result) => {
                alert(result);
            })
            .catch((error) => {
                alert('Error: '+ error.body.message);
            })
            
    }
}