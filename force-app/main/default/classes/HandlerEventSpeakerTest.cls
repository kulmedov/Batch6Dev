@isTest
public with sharing class HandlerEventSpeakerTest {
   @TestSetup
   static void prepareData(){
    Event_Organizer__c organizer = new Event_Organizer__c(Name = 'Test Organizer', 
                                                         Email__c = 'testmail@gmail.com',
                                                         Phone__c = '12345678');
    insert organizer;

    Event__c Event = new Event__c(Event_Organizer__c = organizer.id,
                                    Name__c = 'Test Event',
                                    Start_Date_Time__c = dateTime.now().addDays(1),
                                    Max_Seats__c = 10);
    insert Event;

    Speaker__c Speaker = new Speaker__c(Name = 'Test speaker',
                                        Email__c = 'testspeaker@gmail.com',
                                        Phone__c = '1234567890');
    insert speaker;

    Event_Speaker__c EventSpeaker = new Event_Speaker__c(Event__c = Event.id,
                                                        Speaker__c = speaker.id);
    insert EventSpeaker;
   }
   @isTest
   static void testPositive(){
       Event_Speaker__c systemRecord = [SELECT Event__c, Speaker__c FROM Event_Speaker__c LIMIT 1];

       Test.startTest();
       try {
           insert new Event_Speaker__c(Event__c = systemRecord.Event__c,
                                        Speaker__c = systemRecord.Speaker__c);  
       } catch (Exception exc) {
           
       }
       Test.stopTest();
       integer systemCount = [SELECT COUNT() FROM Event_Speaker__c];
       system.assertEquals(1, systemCount);
   }
   @isTest
   static void testNegative(){
       delete[SELECT id FROM Event_Speaker__c];

       Event__c event = [SELECT id FROM Event__c LIMIT 1];
       Speaker__c speaker = [SELECT id FROM Speaker__c LIMIT 1];

       Test.startTest();
       insert new Event_Speaker__c(Event__c = event.id, Speaker__c = speaker.id);
       Test.stopTest();
   }
}
