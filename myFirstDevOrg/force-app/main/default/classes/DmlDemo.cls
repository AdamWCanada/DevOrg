public  class DmlDemo {
    public static void dmlInsertDemo_stndObj1() {
        //1.create new instance of sObject
        Account acc = new Account();
        //2. set field values
        acc.Name = 'SoftInnovas';
        acc.Name = 'Bora Inc';
        //3.set few other fileds here ...
        acc.Phone = '6138593583';
        acc.Phone = '4033977260';
    

        //4.NOW comes the DML
        insert acc; 

        //5. print it


    }
    public static void dmlInsertDemo_cstmObj() {
        //1.create new instance of sObject
        Salesforce_Project__c sp = new Salesforce_Project__c();
        //2. set field values
        sp.Project_Name__c = 'Teach DML to super Batch 10';
        sp.Description__c = 'All are doing great.';
        sp.Status__c = 'New';
   
     //3.set few other fileds here ...

        //4.NOW comes the DML
        insert sp; 

        //5. print it


    }
    public static void dmlUpdateDemo1() {
        //1.create new instance of sObject
        Account acc = new Account();
        //2. set field values
        acc.Name = 'anything';
        insert acc;
        acc.Name = 'Soft Innovas Inc';
        update acc;


    }
    public static void dmlUpdateDemo3() {
        //1.create new instance of sObject
        Account acc = [select id, name from Account where name = 'Soft Innovas Inc' limit 1];
        //2. set field values
        acc.Name = 'Soft Innovas Inc';
        acc.Phone = '6138593583';
        acc.Type = 'Costumer Direct';
        update acc;


    }


}
