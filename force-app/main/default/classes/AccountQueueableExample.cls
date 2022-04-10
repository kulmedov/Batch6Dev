public with sharing class AccountQueueableExample implements Queueable {
    public list<Account> accList;
    //parameterized constructor
    public AccountQueueableExample(list<account>accList){
        this.accList = accList;
    }
    //mandatory method
    public void execute(QueueableContext context){
        for(Account acc : accList){
            //Update the Account Name
            acc.Name = Acc.NAme + '-- SI';
        }
        update accList;
    }
}
