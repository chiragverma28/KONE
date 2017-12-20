public class AddStudent{
        public static void StudentAttendence(Attendence__c[] Att) {
        for(Attendence__c Attendence :Att) {
        
System.debug(Attendence.Class__c);

List<Contact> SContact = new List<Contact>();
       SContact = [SELECT id FROM Contact WHERE Class__r.id=: Attendence.Class__c];

System.debug(SContact); 


for(Contact con1 : SContact) {

 Candidate_Attendence__c Cat = new Candidate_Attendence__c(Attendence__c= Attendence.id  ,Contact__c= con1.id );         
  insert Cat;
    }
        }
     
        }
}