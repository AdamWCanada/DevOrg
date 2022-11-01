public class AccountTriggerHandler {
    public static void updatePhone(List<account> TriggerNew, List<account> TriggerOld, 
    Map<id, account> TriggerNewMap, Map<id, account> TriggerOldMap){
        set<id> AccIds = new set<id>();
        
        for (Account eachAccount : TriggerNew) {
            if (eachAccount.Phone != TriggerOldMap.get(eachAccount.id).Phone) {
                AccIds.add(eachAccount.id);
            }
        }
        List<Contact> contList = [select id, name, MobilePhone, AccountId, otherPhone FROM Contact WHERE  AccountId IN : AccIds];
        for (Contact eachContact : contList) {
           eachContact.otherPhone = TriggerOldMap.get(eachContact.AccountId).Phone;
           eachContact.MobilePhone =TriggerNewMap.get(eachContact.AccountId).Phone;
        }
        update contList;
    }
//When a new contact is created for an existing account then set contact other phone as account phone.

/*public static void ContactPhone(List<account> TriggerNew, List<account> TriggerOld, 
    Map<id, account> TriggerNewMap, Map<id, account> TriggerOldMap){
        
        Set<Id> accSetId = new set<id>();
        for (account eachAcc : TriggerNew) {
            accSetId.add(eachAcc.id);   
        }
       Map<Id,Account> accMap = new Map<Id,Account>();
       for (account cont  : TriggerNewMap) {
        accMap.put(TriggerNewMap, TriggerOldMap);
        
       }
       
       list<contact> contlist = [select id, name, MobilePhone, AccountId, otherPhone FROM Contact WHERE  AccountId IN : accSetId];
        for (Contact eachContact : contList) {
           eachContact.otherPhone = TriggerOldMap.get(eachContact.AccountId).Phone;
           eachContact.MobilePhone =TriggerNewMap.get(eachContact.AccountId).Phone;
        }
}

*/
public static void createContact(List<account> TriggerNew, List<account> TriggerOld, 
Map<id, account> TriggerNewMap, Map<id, account> TriggerOldMap){
   
    //set<id> accId = acctriggerNewMap.keySet();
        
    List<Contact> contList=new list<Contact>();
    
    for (account eachAccount : triggerNew) {
        Contact newCont=new contact();
        newCont.AccountId=eachAccount.Id;
        newCont.LastName=eachAccount.Name;
        contList.add(newCont);
    }
    if (!contlist.isEmpty()) {
        insert contList;
    }
    
}
}
    /*public static void updateOpportunityStage(List<account> TriggerNew, List<account> TriggerOld, 
    Map<id, account> TriggerNewMap, Map<id, account> TriggerOldMap){
        
        List<Opportunity> oppList = [select id, name, stageName from Opportunity where  accountId IN :triggerNew and stageName!='Closed Won'];

        for (Opportunity eachOpp : oppList) {
            eachOpp.StageName = 'Closed Lost';  
        }
        update oppList;
    }
}
*/













// Write a trigger on the Account when the Account is updated, check all opportunities related to
//the account. Update all Opportunity Stage to close lost if stage name not already set to closed
//won.

   /* public static void createContact(List<Account> triggerNew){
        
        List<Contact> contList=new list<Contact>();
        
        for (account eachAccount : triggerNew) {
            Contact newCont=new contact();
            newCont.AccountId=eachAccount.Id;
            newCont.LastName=eachAccount.Name;
            newCont.Phone=eachAccount.Phone;
            contList.add(newCont);
        }
        if (!contlist.isEmpty()) {
            insert contList;
        }
        
    }
}
 */ 
   
    /*
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        Map<id, account> newAccMap = accTriggerNewMap;
        map<id, account> oldAccMap = accTriggerOldMap;
        for (account eachAcc : accTriggerNew) {
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
            if (Trigger.isUpdate) {
                //id accId = eachacc.id;
                Account oldAccount = oldAccMap.get(eachacc.id);
                Account newAccount = newAccMap.get(eachacc.id);

                if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    eachAcc.Description = 'Account is now active. Enjoy!';
                }
            }
        }
    }
}
*/