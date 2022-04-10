public with sharing class contactTriggerHandler {
    public static void contactUpdateValidation1(
        List<contact> cntTriggerNew,
        List<contact> cntTriggerOld,
        Map<id, contact> cntTriggerNewMap,
        Map<id, contact> cntTriggerOldMap
    ) {
        for (contact eachContact : cntTriggerNew) {
            if(eachContact.LeadSource == 'Partner Referral'){
                eachContact.addError('Cannot update Partner Referral contacts');
            }
        }
    }
    public static void contactUpdateValidation2(
        List<contact> cntTriggerNew,
        List<contact> cntTriggerOld,
        Map<id, contact> cntTriggerNewMap,
        Map<id, contact> cntTriggerOldMap
    ) {
        for (contact eachContact : cntTriggerNew) {
            contact oldContact = cntTriggerOldMap.get(eachContact.id);
            if(eachContact.LeadSource != cntTriggerOldMap.get(eachContact.id).LeadSource){
                eachContact.LeadSource.addError(system.label.ContactValidation2);
            }
        }
    }
}
