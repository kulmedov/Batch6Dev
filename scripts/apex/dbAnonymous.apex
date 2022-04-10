account acc1 = new account();
acc1.name = 'SI test';
acc1.Industry = 'Energy';
acc1.VIP__c = false;

account acc2 = new account();
acc2.name = 'UI test';
acc2.Industry = 'Energy';

Account acc12x = new account();
Account acc12y = new account();
List<account> listacc = new list<account>{acc1, acc2, acc12x, acc12y};
list<Database.SaveResult> results = Database.insert(listacc, false);

for(Database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        system.debug('Account successfully inserted, Account id is: ' +eachResult.getId());
    } else{
        system.debug('Errors: ' + eachResult.getErrors());
    }
}