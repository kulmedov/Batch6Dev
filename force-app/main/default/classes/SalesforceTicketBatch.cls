public with sharing class SalesforceTicketBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator ql = database.getQueryLocator([select id, Name, CreatedDate, Status__c, LastModifiedDate
         from  Salesforce_Ticket__c WHERE Status__c != 'Not Started']);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<Salesforce_Ticket__c> records){
        for (Salesforce_Ticket__c SFT : records) {
            if (SFT.CreatedDate == SFT.LastModifiedDate) {
                SFT.Status__c = 'Not Started';
                //insert SFT;
                
            }
        }
        update records;
    }
        
        
    public void finish(Database.BatchableContext BC){
        system.debug('Updation successufully done');
        
    }
}