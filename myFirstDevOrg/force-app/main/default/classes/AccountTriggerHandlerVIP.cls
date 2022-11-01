public class AccountTriggerHandlerVIP {
    public static void AccountTriggerVIP1(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap ) {
   
    //get accounts IDs for which VIP filed is CHANGED.
    
      Set<Id> accountIds = new Set<Id>();

        for (Account eachAcc : accTriggerNew) {

            if (/*eachAcc.VIP__c == true && */eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {

                accountIds.add(eachAcc.Id);
                }
            }
            //All contacts for all of those accounts.
            List<Contact> listContacts = [SELECT Id, name, account.id, VIP__c FROM Contact where AccountId IN : accountIds];
            
        for (contact eachContact : listContacts) {
            boolean accVIP = accTriggerNewMap.get(eachContact.account.id).VIP__c;
            eachContact.VIP__c = accVIP;
            
        }
        update listContacts;
        }
 
       /*  
        public static void AccountTriggerHandlerVIPMethod(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {

            Boolean statusVIP = false;
            Set<Id> setAccIDs = new Set<Id>();
            for (Account eachAcc : accTriggerNew) {
                if (eachAcc.VIP__c == true && (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c)) {
                statusVIP = true;
                setAccIDs.add(eachAcc.Id);
                }
    
                if (eachAcc.VIP__c == false && (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c)) {
                statusVIP = false;
                }
            }
            
            List<Contact> listContacts = [SELECT id, Name, VIP__c, AccountId from Contact WHERE AccountId IN : setAccIDs];
                for(Contact eachCon: listContacts){
                eachCon.VIP__c=statusVIP;
                }
                update listContacts;
        }
        
  */      
}