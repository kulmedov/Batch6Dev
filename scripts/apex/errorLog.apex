try {
    Lead newRecord = new Lead();
    newRecord.FirstName = 'Bega';
    newRecord.LastName = 'ARKADAG';
    insert newRecord;
    } catch (Exception exc) {
    System.debug('EXCEPTION: ' + exc.getMessage());
    ErrorLogHelper.createErrorLog('DailyLeadWebService', 'fetchLeads', exc.getMessage());
}