public with sharing class AccConAndOppOperations {
    public static list <account> accountSoql() {
        List<Account> listAcc = [select Id, name, AnnualRevenue, AccountSource from Account];
        System.debug('List account ' + listAcc);
        return listAcc;
    }
    public static List<account> accountSoql2(string accountType){
        list<account> listAcc2 = new list<account>();
        listAcc2 = [select id, name, type from account where type =: accountType];
        return listAcc2;
    }
    public static List<opportunity> accountSoql3(string YapylanWon){
        list<opportunity> listOpp = new list<opportunity>();
        listOpp = [Select id, name, account.Name, amount from opportunity where stageName =: YapylanWon];
        return listOpp;
    }
    public static List<opportunity> printSoql4(string web, string Sstage){
        list<opportunity> listOpp=[select id, name, LeadSource, StageName from opportunity where LeadSource=:web and stageName=:Sstage];
        return listOpp;
    }
    public static double printSoql5(){
        list<opportunity> listOppAmount= new list<opportunity>();
        listOppAmount = [select id, name, amount from opportunity];
        double Summa = 0;
        for (opportunity Opp : listOppAmount) {
          Summa = Summa + Opp.amount;  
        }
        return Summa;
    }
    public static Decimal sumOfAmount(){
        list<opportunity> listAcc4=[select amount from opportunity where amount!=NULL];
        decimal jem=0;
        for (opportunity eachOP : listAcc4) {
        jem=jem +eachOP.Amount;
        System.debug('Miktar' + eachOP.Amount);
        }
        return jem;
    }
    public static Account sevengroup(string name, decimal AnnualRevenue, string type){
        Account acc = new Account();
        acc.name = name;
        acc.AnnualRevenue = AnnualRevenue;
        acc.type = type;
        if (name == '') {
            system.debug('Account without name can not be created.');
        } else {
            insert acc;  
        }
        return acc;
    }
    public static Account CreateNewAccount(string name, decimal AnnualRevenue, string type){
        Account acc = new Account();
        
        if (name != '') {
            acc.name = name;
            acc.AnnualRevenue = AnnualRevenue;
            acc.type = type;
            insert acc;
        } else {
            system.debug('Account without name can not be created.');
        }
        return acc;
    }
}











        