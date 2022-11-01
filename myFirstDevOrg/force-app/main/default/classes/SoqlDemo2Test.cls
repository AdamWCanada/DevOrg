@iTest

public class SoqlDemo2Test {
    private static void testSoqlChildParent1() {
        Account acc=new Account();
        acc.Name = 'SI Test';
        acc.Industry = 'Energy';

        Account acc2=new Account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3=new Account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        List<Account> listAcc= new List<Account>{acc, acc1, acc2};
        insert listAcc;

        List<Contact> newContacts = new List<Contact>();
        for (integer i=0; i<300; i++) {
           Contact c = new contact();
           c.LastName = 'soql test'+ i;
           if (i<100) 
           c.AccountId =acc.Id;
        } else if(i<200){
            c.accountid = acc2.id;
        } else if(i < 300){
            c.AccountId = acc3.id;
        }
        newContacts.add(c);
    }
    insert newContacts;
    //we consumed some heap size, 2 dmls, 303 dml rows

    //2. call method
    test.startTest(); //this will reset governor limit for our method.
    //governor limit will be reset to 0 here.
    SoqlDemo2.childToParent_soql1();
    test.stopTest();
    system.assertEquals(300, newContacts.size());


    @isTest 
}
