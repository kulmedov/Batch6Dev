public inherited sharing class contactClass {
    @AuraEnabled(cacheable=true)
    public static List<Contact> fetchContacts(){
        return [
            SELECT Id, Name
            FROM Contact
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> fetchContactsForAccount(String keyword){
        List<Contact> contacts = new List<Contact>();
        if(String.isBlank(keyword)){
            return contacts;
        }
        String soqlKeyword = '%'+keyword+'%';
        return [
            SELECT Id, Name, Account.Name
            FROM Contact 
            WHERE Account.Name LIKE :soqlKeyword
        ];
    }
}