public with sharing class AccountTriggerHandler {
    public static void updateAccountPhone(map<id, Account> OldMap, map<id, Account> NewMap) {
//         List<id> AccountCnt = new List<id>();
//         for (id Key : Oldmap.Keyset()) {
//             Account OldAcc = OldMap.get(Key);
//             Account NewAcc = NewMap.get(key);
//         if (OldAcc.Phone != NewAcc.Phone) {
//             AccountCnt.add(Key); 
//             }
//         list<contact>BABA = [select id, AccountId, name, OtherPhone, MobilePhone
//             from contact where AccountId in: AccountCnt];
//         for (contact Tmcell : BABA) {
//             Tmcell.MobilePhone = NewMap.get(Tmcell.AccountId).Phone;
//             Tmcell.OtherPhone = OldMap.get(Tmcell.AccountId).Phone;
//         }
//         update BABA;
//     }
// }
    // public static void updateVIPForAllContacts(
    //     List<account> accTriggerNew,
    //     List<account> accTriggerOld,
    //     map<id, account> accTriggerNewMap,
    //     map<id, account> accTriggeroldMap) {
        
    //      set<id> setAccIds = new set<id>();
    //      for (account eachAcc : accTriggerNew) {
    //          if(eachAcc.VIP__c != accTriggeroldMap.get(eachAcc.id).VIP__c){
    //              setAccIds.add(eachAcc.id);
    //          }
    //      }
 
    //      List<contact> listContact = [select id, name, account.id,
    //      vip__c from contact where account.id in :setAccIds];
 
    //      for (contact eachContact : listcontact) {
    //          //get account record from TriggerNewMap.
    //          account acc = accTriggerNewMap.get(eachContact.Account.Id);
    //          boolean accVIP = acc.VIP__c;
    //          eachContact.VIP__c = accVIP;
    //      }
    //      update listContact;
    // }
 }
}