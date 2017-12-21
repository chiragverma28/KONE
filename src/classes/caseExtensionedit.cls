public class caseExtensionedit {
private final ApexPages.StandardController controller;
Public Id recordId{get;set;}
    public caseExtensionedit(ApexPages.StandardController controller) {
        this.controller =controller;
       recordId=ApexPages.currentPage().getParameters().get('Id');

        }
  public PageReference getRedirect() {
    PageReference newPage; 
     
       Case c = [Select id, recordtypeid From Case Where Id = :ApexPages.currentPage().getParameters().get('Id')]; 
        if (c.recordtypeid != '012i0000001Aczm') {
            //newPage = Page.RequisitionInterventionEditPage;
            newPage = new PageReference('/' + c.id + '/e');
            newPage.getParameters().put('nooverride', '1');
            return newPage.setRedirect(true);  
            }else{
             return null;
            }
            
           

            
    }
  
    
    Public Pagereference CancelButton(){
    String url='www.google.com';
    //url=url+recordId;
     return new PageReference(url);
    }
}