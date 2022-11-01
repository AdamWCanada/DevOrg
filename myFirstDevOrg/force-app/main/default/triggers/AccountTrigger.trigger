trigger AccountTrigger on Account (after insert) {
    if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createContact(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap );
   }
}

/*trigger AccountTrigger on Account (before update, after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updatePhone(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap );
   }
} */

/*trigger AccountTrigger on Account (before update, after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateOpportunityStage(trigger.New,trigger.Old, trigger.NewMap, trigger.OldMap );
   }
}
*/







//trigger AccountTrigger on Account (before insert,after insert) {
    //if (trigger.isAfter&&trigger.isInsert) {
        //AccountTriggerHandler.createContact(trigger.New);
   // }
//}

/* trigger AccountTrigger on Account (before insert, before update, after insert, after update){
    if (Trigger.isBefore && trigger.isUpdate) {
        AccountTriggerHandlerVIP.AccountTriggerHandlerVIPMethod(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }*/
    
    /*
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('---end---');

   /*  Map<Id,Account> newAccMap = trigger.newMap;
    Map<Id,Account> oldAccMap = trigger.oldMap;
    system.debug('---   START   ---');

    if (Trigger.isBefore && Trigger.isUpdate) {
        set<id> setAccIds = newAccMap.keySet();
        
        for (id eachId : setAccIds) {
            system.debug('each id which is also key of maps ==> ' + eachId);
            Account oldAccount = oldAccMap.get(eachId);
            system.debug('old Accounts ==> ' + oldAccount);
            String oldWebsite = oldAccount.Website;
            system.debug('old Account website ==> ' + oldAccount.Website);
            
            
            Account newAccount = newAccMap.get(eachId);
            system.debug('new Account name ==> ' + newAccount.Name);
            system.debug('new Accounts ==> ' + newAccount);
            String newWebsite = newAccount.Website;
            system.debug('new Account website ==> ' + newAccount.Website);
 
            
        }
 
     }
    system.debug('---   END     ---');


  /*  

    if (Trigger.isAfter && Trigger.isUpdate) {
        set<id> setAccIds = newAccMap.keySet();
        
        for (id eachId : setAccIds) {
            system.debug('each id which is also key of maps ==> ' + eachId);
            Account newAccount = newAccMap.get(eachId);
            system.debug('new Account name ==> ' + newAccount.Name);
 
            Account oldAccount = oldAccMap.get(eachId);
            system.debug('old Account name ==> ' + oldAccount.Name);
        }
 
     }


   if (trigger.isbefore && trigger.isInsert) {
        system.debug('BEFORE INSERT old map ' + '===> ' + '' + oldAccMap);
        system.debug('BEFORE INSERT new map ' + '===> ' + '' + newAccMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('AFTER INSERT old map ' + '===> ' + '' + oldAccMap);
        system.debug('AFTER INSERT new map ' + '===> ' + '' + newAccMap);
    } 


    if (trigger.isbefore && trigger.isUpdate) {
        system.debug('BEFORE UPDATE old map ' + '===> ' + '' + oldAccMap);
        system.debug('BEFORE UPDATE new map ' + '===> ' + '' + newAccMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('AFTER UPDATE old map ' + '===> ' + '' + oldAccMap);
        system.debug('AFTER UPDATE new map ' + '===> ' + '' + newAccMap);
    } 

    system.debug('---   END     ---');

  if (trigger.isAfter) {
        List<Account> newAccounts = trigger.new;

        Set<Id> setAccIds = new Set<Id>();
        for (account eachAcc : newAccounts) {
            setAccIds.add(eachAcc.Id);         
        }
        System.debug('SET OF IDS ===> ' + setAccIds);
        
    }



  if (trigger.isAfter && trigger.isUpdate) {
        list<Account> newAccounts=trigger.new;
        for (Account newAcc: newAccounts){
            system.debug('NEW Acc id => ' + newAcc.Id + ', ' + ' NEW acc name ==> ' + newAcc.Name + 'NEW phone number' + ' ==> ' + newAcc.Phone );
            }  
        list<Account> oldAccounts=trigger.old;
        for (Account oldAcc: oldAccounts){
            system.debug('OLD Acc id => ' + oldAcc.Id + ', ' + ' OLD acc name ==> ' + oldAcc.Name + 'OLD phone number' + ' ==> ' + oldAcc.Phone );
                } 
    }
  
  if (trigger.isBefore && trigger.isInsert) {
        system.debug('BEFORE INSERT tirgger.old ' + trigger.old);
        
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('BEFORE INSERT tirgger.old ' + trigger.old);
        
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('BEFORE UPDATE tirgger.old ' + trigger.old);
        
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('AFTER UPDATE tirgger.old ' + trigger.old);
        
    }
    system.debug('---   END     ---');


    //trigger.new always gives list<sObject>
   // list<Account> newAccounts=trigger.new;
   // system.debug('number of accounts => ' + newAccounts.size());



   /* if (trigger.isBefore && trigger.isInsert){
        system.debug('BEFORE trigger.new => ' + newAccounts);
        
        for (Account eachAcc: newAccounts){
            system.debug('BEFORE Acc id => ' + eachAcc.Id + ', ' + ' acc name ==> ' + eachAcc.Name + 'phone number' + ' ==> ' + eachAcc.Phone );
            }
        }
    if (trigger.isAfter && trigger.isInsert){
            system.debug('AFTER trigger.new => ' + newAccounts);
            
        for (Account eachAcc: newAccounts){
            system.debug('AFTER Acc id => ' + eachAcc.Id + ', ' + ' acc name ==> ' + eachAcc.Name + 'phone number' + ' ==> ' + eachAcc.Phone );
                }
            }
        system.debug('---end---');
    if (trigger.isBefore && trigger.isUpdate){
            system.debug('BEFORE UPDATE trigger.new => ' + newAccounts);
            
        for (Account eachAcc: newAccounts){
                system.debug('BEFORE Acc id => ' + eachAcc.Id + ', ' + ' acc name ==> ' + eachAcc.Name + 'phone number' + ' ==> ' + eachAcc.Phone );
                }
            }
    if (trigger.isAfter && trigger.isUpdate){
                system.debug('AFTER UPDATE trigger.new => ' + newAccounts);
                
        for (Account eachAcc: newAccounts){
                    system.debug('AFTER Acc id => ' + eachAcc.Id + ', ' + ' acc name ==> ' + eachAcc.Name + 'phone number' + ' ==> ' + eachAcc.Phone );
                    }
    }


*/

    
/*  system.debug('---start---');
    //trigger.new always gives list<sObject>
    list<Account> newAccounts=trigger.new;

    if (trigger.isAfter){
        system.debug('after trigger.new => ' + newAccounts);
        system.debug('number of accounts => ' + newAccounts.size());
        
        for (Account eachAcc: newAccounts){
            system.debug('Acc id => ' + eachAcc.Id + ', ' + ' acc name ==> ' + eachAcc.Name + 'phone number' + ' ==> ' + eachAcc.Phone );
            }
        }
        system.debug('---end---');
        */

/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('---start---');
    List<Account> newAccounts = trigger.new;
    if (trigger.isAfter) {
        system.debug('after trigger.new ====> ' + newAccounts);
        system.debug('number of accounts ===> ' + newAccounts.size());
        
    }
    system.debug('---end---');

*/

    /*if (Trigger.isBefore) {
        system.debug('BEFORE trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account before insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account before update trigger called.');
        }
    }
    if (Trigger.isAfter) {
        system.debug('AFTER trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account after insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account after update trigger called.');
        }
    }*/
   


    /*
if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called');
    }
    */
/*if (trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('account before update trigger called');
    }*/
    /*if (trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/