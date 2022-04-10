import { LightningElement , wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import NETFLIX_MOVIE_DATA from '@salesforce/messageChannel/NetflixMovieData__c';

export default class LwcPublisherNetflix extends LightningElement {
    @wire(MessageContext)
    messageContext;

    handlePublish() {
        alert('Publish about to happen');
        let netflixData = {
            Name: 'Iron Man',
            iMDB: 7.9,
            ReleaseDate: '2008',
            Director: 'Shane Black, Jon Favreau',
            Cast: 'Robert Downey Jr',
            Source: 'LWC'
        };
        publish(this.messageContext, NETFLIX_MOVIE_DATA, netflixData);
        alert('Published');
    }
}