public with sharing class PetTriggerHandler {
    public static void createNextAppointment(List<Pet__c> triggerNew) {
        
        List<Pet__c> nextApp = new List<Pet__c>();

            for (Pet__c p : triggerNew) {
                          
                p.Next_Appointment__c = p.Last_Appointment__c.addMonths(1);
                        
            }   
                 
        update nextApp;
    }
}