public class extCtrlRecordtyperedirect{ 
     Public string strRecTypeid {get; set; }
     Public Recordtype objRectype {get; set;} 
     public extCtrlRecordtyperedirect(ApexPages.StandardController controller) {
          strRecTypeid = apexpages.currentpage().getparameters().get('RecordType');
          List<Recordtype> lstRectype = new List<Recordtype>();
          lstRectype = [select id,Name from Recordtype where id =: strRecTypeid];
               if(lstRectype.size() > 0){
                    objRectype = lstRectype[0];
               }
          }
}