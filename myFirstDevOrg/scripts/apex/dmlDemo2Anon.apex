DmlDemo2.dmlInsertDemo2();
DmlDemo2.dmlInsertDemo3();
DmlDemo2.dmlMultipleRecord_rigth1();
DmlDemo2.dmlMultipleRecord_rigth2();
DmlDemo2.dmlMultipleRecord_rigth3();

Delete [select id, name from Account ORDER BY createddate desc limit 50 ];

list<Account> listAcc = [select id, name from Account ORDER BY createddate desc limit 50 ];
Delete listAcc;


List<contact> conList = [SELECT Name, AccountId FROM contact WHERE accountId!=null];
system.debug('conList'+conList);

Set<id> accIds = new Set<id>();

for (contact con : conList) {
    accIds.add(con.AccountId);
}
system.debug('accIds'+accIds);

List<Opportunity> OppList= [SELECT name FROM opportunity WHERE accountId IN :accIds ORDER BY Name];
system.debug('OppList'+OppList);


List<Opportunity> OppList2= [SELECT name FROM opportunity WHERE accountId IN (SELECT AccountId FROM contact WHERE accountId!=null) ORDER BY Name];
system.debug('OppList2'+OppList2);