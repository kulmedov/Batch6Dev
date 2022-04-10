public with sharing class CreateTaskForOppBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator ql = database.getQueryLocator([select id, Name, CreatedById, LastModifiedDate, OwnerId
         from Opportunity WHERE LastModifiedDate != LAST_N_DAYS:3]);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> records){
        List<Task> TaskList = new list<Task>();
        for (Opportunity opp : records) {
            Task newTask = new Task();
            newTask.OwnerId = opp.OwnerId;
            newTask.Subject = 'Notification to act';
            newTask.WhatId = opp.Id;
            TaskList.add(newTask); 
        }
        if(!TaskList.isEmpty())
            insert TaskList;
    }
        
        
    public void finish(Database.BatchableContext BC){
        system.debug('Exucation successufully done');
        
    }
}