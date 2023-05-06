import { LightningElement } from 'lwc';

export default class ButtonValueChange extends LightningElement {
    name = "abc";

    ChangeName = ()=>{
        this.name = "Mohd Sharib";
    }
}