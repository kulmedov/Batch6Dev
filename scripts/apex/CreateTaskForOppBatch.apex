database.executeBatch(new CreateTaskForOppBatch(), 10);
database.executeBatch(new SalesforceTicketBatch(), 5);

SchedulableBatchOpp OS = new SchedulableBatchOpp();
String SO = '0 0 00 ? * 7';
String jobId = System.schedule('Schedule Opportunity Batch', SO, OS);

SchedulableSTBatch STS = new SchedulableSTBatch();
String ST1 = '0 0 00 ? * 7';
String jobId = System.schedule('Schedule Salesforce Ticket Batch', ST1, STS);
