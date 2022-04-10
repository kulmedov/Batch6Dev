public with sharing class ErrorLogHelper {
    public static void CreateErrorLog(String className, String processName, String logDetails) {
        insert new Error_Log__c(Log_Date_Time__c = dateTime.now(),
                                Process_Name__c = processName,
                                Log_Details__c = logDetails,
                                Apex_Class__c = className);
    }
}
