public inherited sharing class ContactImperative {
    @AuraEnabled
    public static Contact fetchContactById(String contactId){
        List<Contact> contactList = [
            SELECT FirstName, LastName, Email
            FROM Contact
            WHERE Id = :contactId
        ];
        if(contactList!=null && !contactList.isEmpty()){
            return contactList[0];
        }else{
            return null;
        }
    }

    @AuraEnabled
    public static String updateContactEmail(Contact con){
        try{
            update con;
            return 'success';
        }catch(Exception ex){
            return 'failed';
        }
    }
}