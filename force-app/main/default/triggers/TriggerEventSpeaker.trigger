trigger TriggerEventSpeaker on Event_Speaker__c(before insert, before update) {
    if(trigger.isBefore){
        if(trigger.isInsert || trigger.isUpdate){
        HandlerEventSpeaker.validateEventSpeaker(trigger.new);
        }
    }
}