import { LightningElement } from 'lwc';

export default class LwcEventChild extends LightningElement {
    handleCustomEventFire() {
        alert('Custom event about to be fired');
        let spiderman = {
            Name: 'Spider-Man: No Way Home',
            iMDB: 8.5,
            ReleaseDate: '16 December 2021',
            Director: 'Jon Watts',
            Cast: 'Tom Holland, Zendaya'
        };
        let customEvent = new CustomEvent('spidermannowayhome', {detail: spiderman});
        this.dispatchEvent(customEvent);
        alert('Custom event has been fired');
    }
}