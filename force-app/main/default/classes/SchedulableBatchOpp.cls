public class SchedulableBatchOpp implements Schedulable{
    public void execute(SchedulableContext SO) {
Database.executeBatch(new CreateTaskForOppBatch());
    }
}