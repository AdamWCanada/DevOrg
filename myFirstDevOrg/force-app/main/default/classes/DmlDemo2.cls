public  class DmlDemo2 {
    public static void dmlInsertDemo2() {
        Account acc = [select id, name from Account order by CreatedDate asc limit 1];

        contact cnt = new contact ();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;

    }
    public static void dmlInsertDemo3(){
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];
        // create new ticket
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        //st.Subject__c = 'Learn APEX DML';
        //st.Priority__c = 'Low';
        st.Status__c = 'Testing';
        st.Requested_by_date__c = date.newInstance(2022, 10, 03);
        st.Salesforce_Project__c = sp.id;
        insert st;
    }
    public static void dmlMultipleRecord_rigth1(){
        List<Account> listAcc = new List<Account>();
        
        Account acc = new Account();
        acc.name = 'acc bulk 1';
        acc.Phone = '987654321';
        listAcc.add(acc);

        Account acc1 = new Account();
        acc1.name = 'acc bulk 2';
        acc1.Phone = '987654321';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.name = 'acc bulk1';
        acc2.Phone = '987654321';
        listAcc.add(acc2);

        insert listAcc;
            


    }
    
    public static void dmlMultipleRecord_rigth2(){
        List<Account> listAcc = new List<Account>();
        for (integer i=0; i<155; i++) {
            Account acc2 = new Account();
            acc2.name = 'Soft Innovas 30ct V'+i;
            acc2.phone = '987654321';
            acc2.active__c = 'Yes';
            listAcc.add(acc2);
            
        } 
        insert listAcc;
    }

    public static void dmlMultipleRecord_rigth3() {
        list<Account> listAcc = [select id, name from Account ORDER BY createddate desc limit 155 ];
        List<account> updateAcc = new List<account>();

        for (account eachAcc : listAcc) {
            eachAcc.Name = eachAcc.name + 'via B.0';
            //add to newly created list
            updateAcc.add(eachAcc);
            
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
            
        }
        
    }

}