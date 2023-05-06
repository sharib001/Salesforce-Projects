import { LightningElement, track, wire } from 'lwc';
import methodName from '@salesforce/apex/lwcQuestion4.methodName';

export default class Question4 extends LightningElement {
    @track searchKey;
    @track data;
    @track sortData;

    handleChange(event){
        this.searchKey = event.target.value;
        methodName({txt: this.searchKey, s: this.sortData})
        .then(result => {
            this.data = result;
        })
        .catch(error =>{
            this.data = error;
        })
    }
    
    handleSort(event){
        this.sortData = event.target.value;
        methodName({txt: this.searchKey, s: this.sortData})
        .then(result => {
            this.data = result;
        })
        .catch(error =>{
            this.data = error;
        })
    }
}