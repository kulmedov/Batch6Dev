@RestResource(urlMapping='/AccountManager/*')
global class AccountCustomAPI {
    
    @HttpGet
    global static Account getAccountId(){
        //Get the request send from external recipient
        RestRequest request = RestContext.request;
        
        //Get the URI of the request
        String uri = request.requestURI;
        System.debug('uri: '+uri);
        
        //Get the starting index of the Id which starts after '/'
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        
        //Get the Id of the record based on the start index 
        String accountId = uri.substring(idStartIndex);
        System.debug('accountId: '+accountId);
        
        //Fetch the contact record
        Account acct = [
            SELECT Name, WebSite, AccountNumber, Industry, Phone 
            FROM Account
            WHERE Id = :accountId
        ];
        
        return acct;
    }
    
    @HttpPost
    global static Id createAccount(
        String accountName, String Site, String acctNumber, String phoneNumber, String Industry
    ){
        Account acct = new Account();
        acct.Name=accountName;
        acct.WebSite=Site;
        acct.accountNumber=acctNumber;
        acct.phone=phoneNumber;
        acct.Industry=Industry;
        insert acct;
        return acct.Id;
    }
    
    @HttpDelete
    global static String deleteAccount(){
        //Get the request send from external recipient
        RestRequest request = RestContext.request;
        
        //Get the URI of the request
        String uri = request.requestURI;
        System.debug('uri: '+uri);
        
        //Get the starting index of the Id which starts after '/'
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        
        //Get the Id of the record based on the start index 
        String accountId = uri.substring(idStartIndex);
        System.debug('accountId: '+accountId);
        
        Account acct = new Account(Id = accountId);
        delete acct;
        return 'Account with Id '+accountId+' deleted';
    }
    
    @HttpPatch
    global static String updateAccount(
        String acctType, String ownerShip
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
        String accountId = uri.substring(idStartIndex);
        System.debug('accountId: '+accountId);
        
        Account acct = new Account();
        acct.Id = accountId;
        acct.type = acctType;
        acct.ownerShip=ownerShip;
        update acct;
        return 'Account with Id '+accountId+' updated sucessfully';
    }
    @HttpPut
    global static String upsertAccount(Account acct){
        String returnString;
        if(acct.Id == null){
            returnString = 'Account created with Id: '; 
        }else{
            returnString = 'Account updated with Id: ';
        }
        
        upsert acct;
        return returnString+acct.Id;
    }
}