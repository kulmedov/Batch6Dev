import { LightningElement, wire } from 'lwc';
import fetchContactsByAccount from '@salesforce/apex/contactClass.fetchContactsForAccount';

export default class LwcContactSearchByAccount extends LightningElement {
    enteredKeyword;
    keywordJs;

    @wire(fetchContactsByAccount, { keyword: '$keywordJs' })
    contacts;

    handleTextSearch(event) {
        this.enteredKeyword = event.detail.value;
    }

    handleSearchClick() {
        this.keywordJs = this.enteredKeyword;
    }
}