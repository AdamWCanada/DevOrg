public class NewContactsAssignment {
    public static void newcontacts() {
        List<Contact> mylist = [SELECT LastName, Phone FROM Contact];
        Integer sizeContacts = mylist.size();
        system.debug('Customers last name and phone numbers are '+ mylist);


    }
}
