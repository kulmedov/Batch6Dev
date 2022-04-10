Account acc = [SELECT Id, Name FROM Account LIMIT 1][0];
String accJSON = JSON.serialize(acc);
system.debug('accJSON: '+accJSON);

Account accRec = (Account)JSON.deserialize(accJSON, Account.class);
system.debug('accRec: '+accRec);