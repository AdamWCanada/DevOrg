public  class SOQL_Class {
    public account_SOQL() {
        List<Account> listAccount = [select id, name, phone from account WHERE Phone!=null];
        system.debug('account list ===> ' + listAccount);
        system.debug('# of records ==> ' + listAccount.size());

    }
    /* 24. "SOQL_Class" isminde bir class oluşturun ve aşağıda belirtilen SOQL sorgularını ilgili method'da yapınız.
a.     "account_SOQL" methodu ile: Account objesinde, telefon numaraları boş olmayanları her bir record ayrı satırlarda olacak şekilde print ediniz.
b.     "account_SOQL" methodu ile: Account objesinde, id, name'i çağırınız ve name field'inin sonunda 'a' geçenleri filtreleyerek her bir record ayrı satırlarda olacak şekilde print ediniz.
c.      "account_SOQL_2" methodu ile: Method parametre olarak string bir değer alsın ve SOQL sorgusunda name içinde herhangi bir yerinde 'parametre' geçen recordları getirsin. Her bir record ayrı satırlarda olacak şekilde print ediniz.
d.     "contact_SOQL" methodu ile: contact objesinden homePhone'u ve phone'u boş olanları getiriniz ve her bir record ayrı satırlarda olacak şekilde print ediniz.
e.      "account_SOQL_3" methodu ile: Account objesinde Annual Revenue'lerinin (boş olmayan) toplamını bulan bir method yazın ve debug mesajı ile görüntüleyin.*/
}



