list<list<Sobject>> searchList = [Find 'salesforce' in all fields
returning account(name), contact(firstname, lastName, Department)];

list<account> searchAccounts = (account[])searchList[0];
system.debug('search account - ' + searchAccounts);

list<contact> searchContacts = (contact[])searchList[1];
system.debug('search contact - ' + searchContacts);