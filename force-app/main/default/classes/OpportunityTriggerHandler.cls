public with sharing class OpportunityTriggerHandler {
    public static void newOppInsert(List<opportunity> oppList) {
      for (opportunity eachOpp : oppList) {
          if (eachOpp.stageName == 'Closed Won' || eachOpp.stageName =='Closed Lost') {
              eachOpp.closeDate = system.today();
          }
          else {eachOpp.closeDate = system.today() + 15;}
      }
    }
    public static void updateOpp(map<id, opportunity> OldMap, map<id, opportunity> NewMap) {
        for (id Key : Oldmap.Keyset()) {
            opportunity Old = OldMap.get(Key);
            opportunity NewOpp = NewMap.get(key);
        if (Old.stageName != 'Closed Won' && NewOpp.stageName == 'Closed Won') {
            NewOpp.closeDate = date.today();
        }
    }
}
}