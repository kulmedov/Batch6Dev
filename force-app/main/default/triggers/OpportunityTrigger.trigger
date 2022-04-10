trigger OpportunityTrigger on Opportunity (before insert, after insert, before update,  after update) {
    if (trigger.isBefore && trigger.isInsert) {
        OpportunityTriggerHandler.newOppInsert(trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        OpportunityTriggerHandler.updateOpp(trigger.OldMap, trigger.NewMap);
    }
}