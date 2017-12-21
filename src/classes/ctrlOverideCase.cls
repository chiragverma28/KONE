public class ctrlOverideCase{
public List<RecordType> RTYPE =new List<RecordType>();
Public String strRecordTypeId{get;set;}
public Case cs{get;set;}
public Boolean errorDisplay {get;set;}
Public ctrlOverideCase(ApexPages.StandardController controller){
strRecordTypeId= apexpages.currentpage().getparameters().get('RecordType');
//RTYPE=[select id,Name from RecordType where SobjectType=:'Case'and id=:strRecordTypeId];
cs=(Case)controller.getRecord();
}
public PageReference redirect() {
PageReference returnURL;
if(strRecordTypeId=='012i0000001AdUd')
returnURL=new PageReference('/apex/MI_QuickTurnaround');

else if(strRecordTypeId=='012i0000001Aczm')
returnURL=new PageReference('/apex/RequisitionInterventionPage');

else
returnURL=new PageReference('/apex/MI_DeepDive');

integer counter=0;
return returnURL;
}
public PageReference retPage(){ return null;}
}