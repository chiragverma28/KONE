public class CaseDispatcher {

    public CaseDispatcher(ApexPages.StandardController controller) {

    }
public void redirectToPage() {
    String selectedRecordType = ApexPages.currentPage().getParameters().get('RecordType');
    if (selectedRecordType == '012i0000001Aczm'){
    
     Page.RequisitionInterventionPage.setRedirect(true); 
      } }}