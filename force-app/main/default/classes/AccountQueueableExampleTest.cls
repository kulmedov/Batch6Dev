@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        List<Account>accounts = new list<account>();
        for(Integer i = 0; i<100; i++){
            accounts.add(
                new account(name = 'Test account' +i)
            );
        }
        insert accounts;
    }
    @isTest
    private static void testQueueable(){
        List<account> accounts = [select id, name From account Where name like 'Test Account%'];
        AccountQueueableExample acq = new AccountQueueableExample(accounts);

        test.startTest();
        system.enqueueJob(acq);
        test.stopTest();

        //assert
        integer count = [select count() From account where name like 'SI%'];
        system.assertEquals(100, count);
    }
}
