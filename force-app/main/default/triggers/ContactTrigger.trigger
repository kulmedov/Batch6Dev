trigger ContactTrigger on Contact(before update, after insert, after Update, after delete, after undelete) {
    //Placeholder for collecting all account Ids fow which no of contacts need to be updated
    Set<Id> accountIds = new Set<Id>();
    //Collecting for delete, Insert and Update operation
    if(trigger.isUpdate || trigger.isUnDelete || trigger.isInsert){
        for(Contact c : trigger.new){
            if(trigger.isUpdate){
                //Update operation and reparenting happened
                if(c.AccountId != trigger.OldMap.get(c.Id).AccountId){
                    accountIds.add(c.AccountId);//adding new accountId
                    accountIds.add(trigger.OldMap.get(c.Id).AccountId);//added old accountId
                }
            }
            else
            //for insert and delete collecting account Ids
            accountIds.add(c.AccountId);
        }
    }
    system.debug('account id ' + accountIds);
    //for insert and delete collecting account Ids
    if(trigger.isDelete){
        for(Contact c : trigger.Old){
            accountIds.add(c.AccountId);
        }
    }

    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    // }*/
    // if(trigger.isBefore){
    //     system.debug('we are in BEFORE trigger');
    //     if(trigger.isInsert)
    //         system.debug('before insert trigger called.');
    //     if(trigger.isUpdate)
    //         system.debug('before update trigger called.');
    // }
    // if(trigger.isAfter){
    //     system.debug('we are in AFTER trigger');
    //     if(trigger.isInsert)
    //         system.debug('after insert trigger called.');
    //     if(trigger.isUpdate)
    //         system.debug('after update trigger called.');
    // }
    // We have all accoundIds for which we need to update Nuber of contacts Field
    if(accountIds.isEmpty()){
        list<account> accWithRelatedContactsList = new list<Account>();
        accWithRelatedContactsList = [select id, Number_of_Contacts__c, (select id from contacts) from Account where Id = :accountIds];
            system.debug('accWithRelatedContactsList' + accWithRelatedContactsList);
        for(Account acc: accWithRelatedContactsList){
            list<contact> contactList = new list<contact>();
            contactList = acc.contacts;
            acc.Number_of_Contacts__c = contactList.size();
        }
        Update accWithRelatedContactsList; 
    }
}