public inherited sharing class FetchAccountId {
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> accList = [
            SELECT Id, Name, Site
            FROM Account
            ORDER BY CreatedDate DESC
        ];
        return accList;
    }

    @AuraEnabled
    public static Account fetchAccount(String accountId){
        Account acc = [
            SELECT Id, Name, Site
            FROM Account
            WHERE Id = :accountId
        ];
        return acc;
    }

    @AuraEnabled
    public static string updateAccount(Account acc){
        try{
            update acc;
            return 'success';
        }catch(Exception ex){
            return 'failure';
        }
    }
}