trigger AssetTrigger on Asset (before insert, before update) {
    AssetHandlerUpdate.Assethandlerupdate(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);

    /*AssetHandlerUpdate.AssetDescriptionUpdate(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap); */

}