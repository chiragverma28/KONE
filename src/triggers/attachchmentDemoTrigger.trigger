trigger attachchmentDemoTrigger on Attachment (before insert) {
     List<Case> caseList = new List<Case>();
    Set<Id> caseIds = new Set<Id>();
    for(Attachment att : trigger.New){
         //Check if added attachment is related to Account or not
         if(att.ParentId.getSobjectType() == Case.SobjectType){
              caseIds.add(att.ParentId);
         }
    }
    caseList = [select id, has_Attachment__c from Case where id in : caseIds];
    if(caseList!=null && caseList.size()>0){
        for(Case cas : caseList){
            cas.Has_Attachment__c = true;
        }
        update caseList;
    }

}