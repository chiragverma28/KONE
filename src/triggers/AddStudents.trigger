trigger AddStudents on Attendence__c (after insert) {

Attendence__c[] Att = Trigger.new;

AddStudent.StudentAttendence(Att);
}