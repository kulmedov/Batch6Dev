@RestResource(urlMapping='/ContactCustom/*')
global class CustomContactAPI {
	
    @HttpGet
    global static Contact getContactId(){
        //Get the request send from external recipient
        RestRequest request = RestContext.request;
        
        //Get the URI of the request
        String uri = request.requestURI;
        System.debug('uri: '+uri);
        
        //Get the starting index of the Id which starts after '/'
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        
        //Get the Id of the record based on the start index 
        String contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        
        //Fetch the contact record
        Contact con = [
            SELECT Name, Email, Phone, Account.Name
            FROM Contact
            WHERE Id = :contactId
        ];
        
        return con;
    }
    
    @HttpPost
    global static Id createContact(
    	String fName, String lName, String emailId, String phoneNumber, String accountId
    ){
        Contact con = new Contact();
        con.FirstName = fName;
        con.LastName = lName;
        con.Email = emailId;
        con.Phone = phoneNumber;
        con.AccountId = accountId;
        insert con;
        return con.Id;
    }
    
    @HttpDelete
    global static String deleteContact(){
        //Get the request send from external recipient
        RestRequest request = RestContext.request;
        
        //Get the URI of the request
        String uri = request.requestURI;
        System.debug('uri: '+uri);
        
        //Get the starting index of the Id which starts after '/'
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        
        //Get the Id of the record based on the start index 
        String contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        
        Contact con = new Contact(Id = contactId);
        delete con;
        return 'Contact with Id '+contactId+' deleted';
    }
    
    @HttpPatch
    global static String updateContact(
    	String emailId, String phoneNumber
    ){
        //Get the request send from external recipient
        RestRequest request = RestContext.request;
        
        //Get the URI of the request
        String uri = request.requestURI;
        System.debug('uri: '+uri);
        
        //Get the starting index of the Id which starts after '/'
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        
        //Get the Id of the record based on the start index 
        String contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        
        Contact con = new Contact();
        con.Id = contactId;
        con.Email = emailId;
        con.Phone = phoneNumber;
        update con;
        return 'Contact with Id '+contactId+' updated sucessfully';
    }
    
    @HttpPut
    global static String upsertContact(Contact con){
        String returnString;
        if(con.Id == null){
            returnString = 'Contact created with Id: '; 
        }else{
            returnString = 'Contact updated with Id: ';
        }
        
        upsert con;
        return returnString+con.Id;
    }
}