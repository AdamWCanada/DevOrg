public  class SOQL_Assignment {
    public static void soql_WhereClause() {
        List<Contact> lstcontact = [SELECT Id, LastName FROM Contact WHERE LAstName LIKE '%A%'];
        Integer sizeOfContacts = lstcontact.size();
        system.debug('size of contacts is '+ sizeOfContacts);
    }

    public static void soql_formethod(){
        List<Contact> lstcontact2 = [SELECT Id, LastName, Phone FROM Contact];
        for (contact NamePhone : lstcontact2) {
            
            system.debug('Last name is '+ NamePhone.LastName + ' && ' + 'Phone number is '+ NamePhone.Phone);
            
        }
    }

    public static void contactsSOQL(){
        List<contact>  lstcontact = [SELECT Account.Id, Account.Name from Contact];
        for (Contact eachCont : lstcontact) {
            system.debug('ID is '+ eachCont.Id + ' && ' + 'Name is '+ eachCont.Name);
            
            // String id1 = eachCont.Id;
            //String name1 = eachCont.Name;
            //System.debug('Id for each contact is ' + id1);
           // System.debug('Name of each contact is ' + name1);
            
        }
    }

}
