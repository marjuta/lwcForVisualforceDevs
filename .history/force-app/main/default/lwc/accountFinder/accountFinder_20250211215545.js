import { LightningElement } from 'lwc';
export default class AccountFinder extends LightningElement {
    annualRevenue = null;
    handleChange(event) {
        this.annualRevenues = event.detail.value;
    }
    reset() {
        this.annualRevenue = null;
    }
}