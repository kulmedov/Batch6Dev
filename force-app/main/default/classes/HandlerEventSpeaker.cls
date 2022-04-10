public with sharing class HandlerEventSpeaker {
    public static void  validateEventSpeaker(List<Event_Speaker__c> EventSpeakers) {
        set<id>SpeakerIds = new set<id>();
        set<id> EventIds = new set<id>();
        Map<String, Event_Speaker__c> eventSpeakerMap = new Map<String, Event_Speaker__c>();

        for(Event_Speaker__c ES: EventSpeakers){
            SpeakerIds.add(ES.Speaker__c);
            EventIds.add(ES.Event__c);

            string myKey = string.valueOf(ES.Speaker__c) + string.valueOf(ES.Event__c);
            eventSpeakerMap.put(myKey, ES);
        }
        System.debug('Speaker Ids ' + SpeakerIds);
        System.debug(' Event Ids ' + EventIds);

        for(Event_Speaker__c ES: [select id, Speaker__c, Event__c from 
                                  Event_Speaker__c where Speaker__c 
                                  IN:SpeakerIds AND Event__c IN:EventIds]){
        string systemKey =string.valueOf(ES.Speaker__c) + string.valueOf(ES.Event__c);
        Event_Speaker__c toBeFailed = eventSpeakerMap.get(systemKey);

        if(toBeFailed != null){
            toBeFailed.addError('This is a duplicate records. Sorry ' + string.valueOf(ES.Id));
        }
            
        }
        }
    }
