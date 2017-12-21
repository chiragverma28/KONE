public class caseExtension {
public String strRecordTypeId{get;set;}
public RecordType recordType{get;set;}
List<RecordType> lstred{get;set;}
Public Id UserProfileId{get;set;}
  public Case cs{get;set;}
  
    public caseExtension(ApexPages.StandardController controller) {
    UserProfileId=userinfo.getProfileId();
    strRecordTypeId= apexpages.currentpage().getparameters().get('RecordType');

lstred=[select id,Name from RecordType where id=:strRecordTypeId];

if(lstred.size()>0){

recordType=lstred[0];
}
     this.cs= (Case)controller.getRecord();
      cs.What_do_you_need_to_procure__c='';       
    }
    
   
 
}