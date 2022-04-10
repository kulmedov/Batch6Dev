trigger SalesforceProjectTrigger on Salesforce_Project__c (after insert, after update) {
    if (trigger.isAfter) {
        if(trigger.isInsert){
            SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
            SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newMap.keySet());
        }
        if(trigger.isUpdate){
            SalesforceProjectTriggerHandler.spCompletedStatus(trigger.New, trigger.old, Trigger.NewMap, Trigger.OldMap);
        }
        
    }
}