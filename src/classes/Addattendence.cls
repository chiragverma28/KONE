public class Addattendence{
        public static void generateAttendence(Attendence__c[] Att) {
        for(Attendence__c Attendence :Att) {
        
System.debug(Attendence.Class__c);

List<Candidate__c> Candidate = new List<Candidate__c>();
       Candidate = [SELECT Name FROM Candidate__c WHERE Class__r.id=: Attendence.Class__c];

System.debug(Candidate); 


for(Candidate__c can1 : Candidate) {

 Candidate_Attendence__c Cat = new Candidate_Attendence__c(Attendence__c= Attendence.id  ,Candidate__c= Can1.id );         
  insert Cat;
    }
        }
     
        }
}