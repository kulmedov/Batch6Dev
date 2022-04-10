public class SchedulableSTBatch implements Schedulable{
    public void execute(SchedulableContext ST1) {
Database.executeBatch(new SalesforceTicketBatch());       
            }
}



