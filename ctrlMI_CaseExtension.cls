public class ctrlMI_CaseExtension {
public String recordId{get;set;}
public Case caserecord{get;set;}
  
    public ctrlMI_CaseExtension (ApexPages.StandardController controller) {
    recordId= apexpages.currentpage().getparameters().get('id');
if(recordId!=null)
caserecord=[select id,Requestor_Name__c,Requester_MUD_ID__c,Requester_Email_ID__c,Department__c from Case where id=:recordId];

}

Public void updatecaseDetails()
{
if(UserInfo.getUserId()=='005i000000382hM'){

user u1=[select FirstName,LastName,Requester_MUD_ID__c,Email,Department__c from user where Id=:'005i000000382hM'];
caserecord.Requestor_Name__c='Ian Radford';
caserecord.Requester_MUD_ID__c='IZR53782';
caserecord.Requester_Email_ID__c= u1.Email;
caserecord.Department__c = u1.Department__c ;


}
}
    
   
 
}