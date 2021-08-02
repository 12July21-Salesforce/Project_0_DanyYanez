public with sharing class PetTriggerHandler {
    public static void createNextAppointment(List<Pet__c> triggerNew) {
        
            for (Pet__c p : triggerNew) {
                if (p.Medical_Status__c == 'Checked') {
                    p.Next_Appointment__c = p.Last_Appointment__c.addMonths(1);             
                }   
            }
                 
    }
}