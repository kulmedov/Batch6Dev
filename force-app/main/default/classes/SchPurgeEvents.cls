public with sharing class SchPurgeEvents implements Database.Batchable<sObject>, Schedulable {

    // Schedule functionality
    public void execute(SchedulableContext sc){
        Database.executeBatch(new SchPurgeEvents());
    } 
    
    //batch records query
    public Database.QueryLocator start(Database.BatchableContext bc){
            return Database.getQueryLocator([SELECT Id
                                            FROM Event__c
                                            WHERE End_Date_Time__c <=:Datetime.now().addMonths(-2)
                                            AND Live__c = false
                                            ]);
    }
    
    // the real 'what to do'
    public void execute(Database.BatchableContext bc, List<Event__c> events){
        delete events;
    }
      
    // send email
    public void finish(Database.BatchableContext bc){
        // find members
        Set<Id> userIds = new Set<Id>();
        for(GroupMember gm : [SELECT UserOrGroupId FROM GroupMember WHERE Group.Name = 'Daily Job']){
            userIds.add(gm.UserOrGroupId);
        }
        
        Set<String> emailAddresses = new Set<String>();
        for(User us : [SELECT Email FROM User WHERE IsActive = true AND Id IN: userIds]){
            emailAddresses.add(us.Email);
        }

        // Send Email to Daily Job public group members
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setSubject('Daily Purge Event Job Completed');
        mail.setSenderDisplayName('SI Salesforce Robot');
        mail.setPlainTextBody('Daily purge event job is completed. You can check Setup -> Apex Jobs.');
        mail.setHtmlBody('<p>Daily purge event job is completed. You can check Setup -> Apex Jobs.</p>');
        mail.setToAddresses(new List<String>(emailAddresses));

        Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{mail});
    }

}