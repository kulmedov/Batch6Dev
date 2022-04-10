@isTest
public with sharing class SPTriggerHandlerTest {
    @isTest
    private static void testMethod1() {
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'Teach FUTURE to falcons';
        sp1.Description__c = 'All 50% are great learners';
        sp1.Status__c = 'New';
        
        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'Teach FUTURE to falcons';
        sp2.Description__c = 'All 50% are great learners';
        sp2.Status__c = 'New';
        
        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp1, sp2};
        insert lstSP;

        set<id> spIds = new set<id>{sp1.id, sp2.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.contains('Future'));
        
    }
}