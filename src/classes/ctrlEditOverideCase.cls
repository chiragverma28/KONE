public class ctrlEditOverideCase{
public List<RecordType> RTYPE =new List<RecordType>();
Public String strRecordTypeId{get;set;}
Public String recordId{get;set;}
public Case cs{get;set;}
public Boolean errorDisplay {get;set;}
Public ctrlEditOverideCase(ApexPages.StandardController controller){
recordId= apexpages.currentpage().getparameters().get('id');
//RTYPE=[select id,Name from RecordType where SobjectType=:'Case'and id=:strRecordTypeId];
//cs=(Case)controller.getRecord();
cs=[Select id from case where id=:recordId];
}
public PageReference redirect() {
PageReference returnURL;
if(cs.RecordTypeId=='012i0000001AdUd')
returnURL=new PageReference('/apex/MI_QuickTurnaroundEdit');

else if(cs.RecordTypeId=='012i0000001Aczm')
returnURL=new PageReference('/apex/RequisitionInterventionEditPage');

else
returnURL=new PageReference('/apex/MI_DeepDiveEdit');

integer counter=0;
return returnURL;
}
public PageReference retPage(){ return null;}
}