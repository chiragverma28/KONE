public class AttendenceEditExtensionV1 {
    private ApexPages.StandardController std;
     
    // the associated contacts
   public List<Candidate_Attendence__c> Cat;
      
   
    public AttendenceEditExtensionV1 (ApexPages.StandardController stdCtrl)
    {
     std=stdCtrl;
    }
     
    public Attendence__c getAttendence()
    {
     return (Attendence__c) std.getRecord();
    }
 
    private boolean updateCat()
    {
        boolean result=true;
        if (null!=Cat)
           {
           List<Candidate_Attendence__c> updCat=new List<Candidate_Attendence__c>();
              try
              {
               update Cat;
              }
              catch (Exception e)
              {
                 String msg=e.getMessage();
                 integer pos;
                  
                 // if its field validation, this will be added to the messages by default
                 if (-1==(pos=msg.indexOf('FIELD_CUSTOM_VALIDATION_EXCEPTION, ')))
                 {
                    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, msg));
                 }
                  
                 result=false;
              }
           }
            
           return result;
    }
     
    public PageReference saveAndExit()
    {
     boolean result=true;
    result=updateCat();
      
     if (result)
     {
        // call standard controller save
        return std.save();
     }
     else
     {
      return null;
     }
    }
     
    public PageReference save()
    {
     Boolean result=true;
     PageReference pr=Page.AttendenceAndCandidateAttendenceEditV1;
     if (null!=getAttendence().id)
     {
      result=updateCat();
     }
     else
     {
      pr.setRedirect(true);
     }
      
     if (result)
     {
        // call standard controller save, but don't capture the return value which will redirect to view page
        std.save();
           ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Changes saved'));
     }
        pr.getParameters().put('id', getAttendence().id);
      
     return pr;
    }
 
     
   public List<Candidate_Attendence__c> getCat()
    {
       if ( (null!=getAttendence()) && (Cat == null) )
       {
           Cat=[SELECT Id, Name, Contact__c, Present__c,Attendence__c
                         FROM Candidate_Attendence__c 
                         WHERE Candidate_Attendence__c.Attendence__r.ID = : getAttendence().ID
                         ORDER BY Contact__c];
       }
                           
       return Cat;
    }
}