@RestResource(urlMapping='/LeadsManager/*')
global inherited sharing class LeadsManagerAPI {
	@HttpGet
    global static List<Lead> getLeads(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI; ///LeadsManager/00Q5j000008EiIVEA0,00Q5j000008EiIWEA0
        Integer startIndexOfLeadIds = uri.lastIndexOf('/')+1; //14
        String leadIds = uri.substring(startIndexOfLeadIds);	//00Q5j000008EiIVEA0,00Q5j000008EiIWEA0,00Q5j000008EiIWEA0
        List<String> listLeadsIds = leadIds.split(',');
        
        List<Lead> leads = [
            SELECT FirstName, Phone, Title, Website, Email, LastName, Company
            FROM Lead
            WHERE Id IN :listLeadsIds
        ];
        return leads;
    }
    
    @HttpPost
    global static List<Lead> createLeads(List<Lead> records){
        Database.SaveResult[] results = Database.insert(records, false);
        return records;
    }
    
    @HttpPatch
    global static List<Lead> updateLeads(List<Lead> records){
        Database.SaveResult[] results = Database.update(records, false);
        return records;
    }
    
    @HttpPut
    global static List<Lead> upsertLeads(List<Lead> records){
        Database.UpsertResult[] results = Database.upsert(records, false);
        return records;
    }
    
    @HttpDelete
    global static String deleteLeads(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI; ///LeadsManager/00Q5j000008EiIVEA0,00Q5j000008EiIWEA0
        Integer startIndexOfLeadIds = uri.lastIndexOf('/')+1; //14
        String leadIds = uri.substring(startIndexOfLeadIds);	//00Q5j000008EiIVEA0,00Q5j000008EiIWEA0,00Q5j000008EiIWEA0
        List<String> listLeadsIds = leadIds.split(',');
        
        List<Lead> deleteLeads = new List<Lead>();
        for(String leadId: listLeadsIds){
            deleteLeads.add(new Lead(Id = leadId));
        }
        Database.DeleteResult[] results = Database.delete(deleteLeads, false);
        return 'All leads mentioned deleted';
    }
}