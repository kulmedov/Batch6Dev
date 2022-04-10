list<Case> newCases = new List<Case>();
for(integer i=0; i<205; i++){
    Case c = new case();
    c.subject = '';
    c.Description = '';
    c.status = 'New';
    c.Origin = 'Web';
    newCases.add(c);
}
insert newCases;

// Need to update more than 200 records
list<Case> CaseList = new List<Case>();
CaseList = [select id, description from case];
for(case c:CaseList){
    c.description = 'Updated description';
}
Update CaseList;