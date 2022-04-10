import { LightningElement } from 'lwc';

export default class LwcLifecycleGrandParent extends LightningElement {
    showLwcLifecycleParent = false;

    handleParentViewChange(event) {
        this.showLwcLifecycleParent = event.detail.checked;
    }
}