public with sharing class SoqlDemo {
    public static void accountSOQL() {
        List<account> listAcc = [select ID, name from account where name like '%A%'];
        System.debug('account list = ' + listAcc);

        account acc = [select id, name from account ORDER BY createdDate desc LIMIT 1];
        System.debug('latest account created is ' + acc);

    }
    public static void accountSOQL_1() {
        account acc = [select id, Name, phone, AccountNumber from account ORDER BY createdDate desc limit 1];
        System.debug('latest account created is ' + acc);
        String accName = acc.Name;
        String accPhone = acc.Phone;
        System.debug('accName = ' + accName + ' phone is ' + accPhone);
        System.debug('account number is ' + acc.AccountNumber);
    }
    public static void accountSOQL_2() {
        list<account> listAcc = [select id, name, phone, AccountNumber from account ORDER BY createdDate desc];
        System.debug('all accounts ' + listAcc);
        // datetype same as LIST
        for (account eachAccount : listAcc) {
            String accName = eachAccount.name;
            String accPhone = eachAccount.phone;
            System.debug('accName = ' + accName + ', phone is ' + accPhone);
            System.debug('account number is ' + eachAccount.AccountNumber);
        }
       
    }
    public static void accountSOQL_Filter(){
        string accNameFilter = 'Salesforce industries';
        list<account> listAcc = [select id, name from account where name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void accountSOQL_Filter(string accNameFilter){
        list<account> listAcc = [select id, name from account where name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void childToPArent_Soql() {
        list<contact>ListContact = [select id, name, account.name 
        from contact where account.industry = 'Energy'];
      for (contact eachContact : ListContact) {
          string accName = eachContact.account.Name;
          System.debug('contact name is ' + eachContact.Name + ', its account is ' + accName);
      }  

    }
    public static void childToPArent_Soql1() {
        list<salesforce_ticket__c> ListSalesforceTickets = [select Id, Name, subject__c, priority__c,
        salesforce_project__r.project_name__c, salesforce_project__r.status__c from salesforce_ticket__c];
      for (salesforce_ticket__c eachSFT : ListSalesforceTickets) {
          String TicketName = eachSFT.Name;
          String TicketPriority = eachSFT.priority__c;
          String ProjectName = eachSFT.salesforce_project__r.project_name__c;
          System.debug('Salesforce Ticket Name = ' + TicketName);
          System.debug('Salesforce Ticket Priority = ' + TicketPriority);
          System.debug('Project Name = ' + ProjectName);
      }
    } 
    public static void sampleSoql3() {
        List<account> accountWithOppList = [select Name, annualRevenue,
        (select name, amount from opportunities where stageName = 'closed won'),
        (select lastName from contacts)
        from account where type = 'customer - direct'];

        for (account acc : accountWithOppList) {
            System.debug('Account Name= ' + acc.name + ' its annual revenue ' + acc.annualRevenue);
            list<Opportunity> listOpp = acc.opportunities;
            // System.debug('number of opps = ' + listOpp.size());
            integer countOpp = 0;
            for (opportunity opp : listOpp) {
                System.debug('opp name = ' + opp.name);
                System.debug('opp amount = ' + opp.amount);
                countOpp++;
            }
         System.debug('opp count = ' + countOpp);   
        }
    }
    public static void soqlDemo4() {
        list<salesforce_project__c> listSP = [select Id, Name, project_name__c,
         (select Name, subject__c, priority__c from salesforce_tickets__r) 
         from salesforce_project__c];
        // Project ID : SP-1001 - Toral # ST: 2 and High Priority ST : 1
        integer totalHighPriorityST = 0;
        for (salesforce_project__c eachSP : listSP) {
            list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
            string spName = eachSP.Name;
            integer totalST = listST.size();
            integer highPriorityST = 0;
            for (salesforce_ticket__c eachST : listST) { 
                if (eachST.priority__c == 'high') 
                    highPriorityST++;
                    totalHighPriorityST++;
            }
            System.debug('project ID = ' + spName + 
            ' Total # ST ' + listST + 
            ' high priority SF tickets '+ highPriorityST);   
            
        }
        System.debug('total high priority tickets in the org');
    }
}