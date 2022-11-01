public class AssetHandlerUpdate {
    public static void AssetDescriptionUpdate(LIST<ASSET> AssettriggerNew, LIST<ASSET> AssettriggerOld, MAP<ID,ASSET> AssettriggerNewMap, MAP<ID,ASSET> AssettriggerOldMap) {
        // get ids from Asset
       
        for (Asset eachAsset : AssettriggerNew) {
            if (Trigger.isInsert || Trigger.isUpdate && eachAsset.Status == 'Shipped') {
                eachAsset.Description = 'Asset is shipped';
            }
            if(eachAsset.Status == 'Installed'){
                    eachAsset.Description = 'Asset is Installed';
                } else {
                    eachAsset.Description = eachAsset.Description;
                }
            }
        }

    public static void Assethandlerupdate(LIST<ASSET> AssettriggerNew, LIST<ASSET> AssettriggerOld, MAP<ID,ASSET> AssettriggerNewMap, MAP<ID,ASSET> AssettriggerOldMap) {
            // get ids from Asset
           
        for (Asset eachAsset1 : AssettriggerNew) {
            if (Trigger.isInsert && Trigger.isUpdate && eachAsset1.Status == 'Shipped') {
                    eachAsset1.Description = 'Asset is shipped.';
            }
            else {
                eachAsset1.Status.addError('System will only accept Shipped');
            }
            }
        }
}

              
        /* Set<Id> AssetsID = new Set<Id>();
        for (asset eachAsset : AssettriggerNew) {
            if (eachAsset.Status=='Shipped' || eachAsset.Status=='Installed') { 
                AssetsID.add(eachAsset.id);
            }
            
        }
        List<Asset> listAsset = [select id, name, status, description from Asset where id in :AssetsID];
        for (asset newasset :listAsset ) {
            if (Trigger.isInsert || Trigger.isUpdate && newasset.status == 'Shipped') {
                newasset.description = 'Asset is shipped';
                
            } else if (Trigger.isInsert || Trigger.isUpdate && newasset.status == 'Installed') {
                newasset.description = 'Asset is installed';
                
            } else {
                newasset.description = newasset.description;
            }
      
    }
  
}
}

*/
