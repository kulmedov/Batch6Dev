import { LightningElement } from 'lwc';

export default class LwcFor extends LightningElement {
    accountList = [
        {
            "CustomerId": "1",
            "Name": "Google Inc",
            "CEO": "Sundar Pichai"
        },
        {
            "CustomerId": "2",
            "Name": "Space X",
            "CEO": "Elon Musk"
        },
        {
            "CustomerId": "3",
            "Name": "Meta",
            "CEO": "Mark Zuckerburg"
        },
        {
            "CustomerId": "4",
            "Name": "Apple",
            "CEO": "Tim Cook"
        },
        {
            "CustomerId": "5",
            "Name": "Microsoft",
            "CEO": "Satya Nadella"
        },
        {
            "CustomerId": "6",
            "Name": "AliExpress",
            "CEO": "Jack Ma"
        }
    ];

}