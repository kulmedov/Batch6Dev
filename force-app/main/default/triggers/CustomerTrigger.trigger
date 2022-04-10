trigger CustomerTrigger on Customer1__c (before delete) {
    Set<Id> ActiveCust = new Set<Id>();
    Set<Id> inactiveCust = new Set<Id>();
    for (Customer1__c Aktif : Trigger.old) {
        if (Aktif.Active__c == True) {
            ActiveCust.add(Aktif.id);
            
        }
        else {
            inactiveCust.add(Aktif.id);
        }

    }
    if (!ActiveCust.isEmpty()){
    List <Payments__c> Pozulan = [Select id from Payments__c  where Customer1__c in : ActiveCust];
    if (!Pozulan.isEmpty())
    delete Pozulan;
    
    }
    if (!inactiveCust.isEmpty()){
        List<Payments__c> inPozulan = [Select id from Payments__c where Customer1__c in : inactiveCust
         and mode__c = 'Online'];
    if (!inPozulan.isEmpty())
    delete inPozulan;
    }

}