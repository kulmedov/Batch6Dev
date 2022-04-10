@isTest
Private class TestSchPurgeEvents {

    @isTest
    static void Tester(){
        Event_Organizer__c organizer = new Event_Organizer__c(Name = 'Test Organizer', 
                                                         Email__c = 'testmail@gmail.com',
                                                         Phone__c = '12345678');
        insert organizer; 

        List<Event__c> events = new List<Event__c>();
        for(integer i=0; i<200; i++){
            events.add(new Event__c(Event_Organizer__c = organizer.id,
                                    Name__c = 'Test Event' + String.valueOf(i),
                                    Start_Date_Time__c = dateTime.now().addMonths(-3),
                                    End_Date_Time__c = dateTime.now().addMonths(-3).addDays(2),
                                    Max_Seats__c = 10,
                                    Live__c = false));
        }
        insert events;
        
        Test.startTest();
        SchPurgeEvents obj = new SchPurgeEvents();
        obj.execute(null);
        Test.stopTest();

        Integer eventCount = [SELECT COUNT() FROM Event__c];
        system.assertEquals(0, eventCount);
    }
}
