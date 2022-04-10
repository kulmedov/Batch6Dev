AccountSchedulable accs = new AccountSchedulable();
string sch = '0 0 13 * * ?';
string jobId = System.schedule('Schedule Account Batch', sch, accs);