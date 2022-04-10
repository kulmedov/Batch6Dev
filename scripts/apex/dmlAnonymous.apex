DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlUpdateDemo_2();
DmlDemo.dmlUpdateDemo_2_CO();
DmlDemo.dmlMultipleRecordInsert_wrong();
DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlMultipleRecordUpdate_right();
DmlDemo.deleteEverything();

DmlDemo.dmlInsertDemo_stndObj();



     salesforce_project__c sp = new salesforce_project__c();
        //2. set fields
        sp.Project_Name__c	= 'Trigger test week 5';
         //3. DML
        insert sp;


   list<account> acc2 = [select id, name from account 
   order by createdDate asc limit 5];

   for(account a: acc2){
      a.Website = 'www.triggerIsEasy.com.tm';
   }
   acc2[0].Website = 'www.triggerrIsEasy.com.tm';
   acc2[1].Website = 'www.triggerrIsEasy.com.tm';
   update acc2;


        Account acc = new account();
        //2. set fields
        acc.name = 'Soft Innovas';
        //3. DML
        insert acc;
        acc.Name = 'Salesforce Inc.';
        update acc;


list<case> newCases = new list<case>();
for(integer i = 0; i<205; i++){
   case c =new case();
   c.subject = 'This is bug';
   c.Description = 'Resolve it';
   c.status='New';
   c.Origin = 'Web';
   newCases.add(c);
}
insert newCases;
}