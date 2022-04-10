import { LightningElement , track } from 'lwc';

export default class LwcEventParent extends LightningElement {
    @track movie = {};
    showMovieDetails = false;

    handleMovie(event) {
        alert('Custom event captured');
        console.log(JSON.stringify(event));
        debugger;
        this.movie.Name = event.detail.Name;
        this.movie.iMDB = event.detail.iMDB;
        this.movie.ReleaseDate = event.detail.ReleaseDate;
        this.movie.Director = event.detail.Director;
        this.movie.Cast = event.detail.Cast;
        this.showMovieDetails = true;
    }
}