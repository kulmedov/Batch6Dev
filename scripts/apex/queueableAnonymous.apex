List<Account> AccLIst = [Select id, name from account];
Id jobId = system.enqueueJob(new AccountQueueableExample(AccLIst));
system.debug(jobId);