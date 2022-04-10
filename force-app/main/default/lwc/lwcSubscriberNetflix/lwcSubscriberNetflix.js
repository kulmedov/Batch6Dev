import { LightningElement, wire } from 'lwc';
import { subscribe , unsubscribe , MessageContext } from 'lightning/messageService';
import NETFLIX_MOVIE_DATA from '@salesforce/messageChannel/NetflixMovieData__c';

export default class LwcSubscriberNetflix extends LightningElement {
    @wire(MessageContext)
    msgContext;

    subscription; //undefined
    netflixData = 'No data';

    handleSubscribe() {
        alert('About to subscribe to Netflix');
        //True OR False
        //null, undefined, 0 are treated as false as well
        if (this.subscription == undefined || this.subscription == null) {
            //for the first time we will have this.subscription as undefined. If conditions invoke on only TRUE criteria

            this.subscription = subscribe(
                this.msgContext, NETFLIX_MOVIE_DATA, 
                payload => {
                    this.handleMovieData(payload);
                    //this.netflixData = payload;
                }
            );
        }
        alert('Subscription completed');
    }

    handleMovieData(payload) {
        this.netflixData = JSON.stringify(payload);
    }

    handleUnsubscribe() {
        alert('Unsubsciption in progress');
        if (this.subscription != undefined && this.subscription != null) {
            unsubscribe(this.subscription);
            this.subscription = undefined;
            this.netflixData = 'No data';
        }
        alert('Unsubscription successful');
    }
}