try{
    account ac = new account();
insert ac;
}
catch(Dmlexception Dex) {
    system.debug('Dml went wrong buddy');
}
catch(Exception Ex){
    system.debug('Something went wrong buddy');
}
 system.debug('Apex is SIMPLE and Interesting');