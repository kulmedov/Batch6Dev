trigger CaseTrigger on Case (before insert, before update) {
if(trigger.isUpdate){
    //update the number of times trigger executed
    CAseTriggerHandler.countTriggerExecution++;
    System.debug('Total number of times trigger executed till now: ' +    CAseTriggerHandler.countTriggerExecution);
    //Update the number of records updated
    CAseTriggerHandler.countRecordsUpdated += trigger.size;
    //CAseTriggerHandler.countRecordsUpdated = CAseTriggerHandler.countRecordsUpdated + trigger.size
    System.debug('Total number of records updated til now: ' + CAseTriggerHandler.countRecordsUpdated);
}
// system.debug('before insert case');
// system.debug('We are in trigger');

// if(trigger.isBefore){
//     system.debug('We are in before trigger');
// if(trigger.isInsert){
//     system.debug('We are in before insert trigger');
// }if(trigger.isUpdate){
//     system.debug('We are in before update trigger');
// }for(case alabay: trigger.New){
//         system.debug('case number = ' + alabay.CaseNumber + ', Record id =' + alabay.id + ', Created Date =' + alabay.createdDate);
//     }
// }

// if(trigger.isAfter){system.debug('We are in after trigger');
// if(trigger.isInsert)
// system.debug('We are in after insert trigger');
// for(case alabay: trigger.New)
//         system.debug('case number = ' + alabay.CaseNumber + ', Record id =' + alabay.id + ', Created Date =' + alabay.createdDate);
// if(trigger.isUpdate)
//     system.debug('We are in after update trigger');
//     for(case Alabay: trigger.New)
//         system.debug('case number = ' + alabay.CaseNumber + ', Record id =' + alabay.id + ', Created Date =' + alabay.createdDate);


// }
}

