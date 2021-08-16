public with sharing class NewFamilyControllerClass {

     
        
        public Family__c newFam {get;set;}
        private final Family__c f;
    
        
    
        public NewFamilyControllerClass( ) {
    
            // newFam = [SELECT ID,Name,Address__c,Address_2__c,City__c,e_Mail__c,Notes__c,
            // State__c,Status__c,Telephone__c,Zip_Code__c
            //     FROM Family__c];

            
            newFam = new Family__c();
    
        }
     
    
        // public insertNewFamController(){
        //     newFam = new Family__c();
        // }
        // public PageReference MessageToHomePage(){
           
        //     PageReference pageR = new PageReference('http://www.google.com');

        //     return pageR;
           
            
            



        // }
        public  void testController(Family__c nF){

            this.newFam = nF;

            


        }

         
    
        public PageReference createNewFamily(){

            PageReference SuccessfulCreationMsgPage = null;

            List<Family__c> oldFamP = [SELECT Id,e_Mail__c, Telephone__c from Family__c]; 
             
            if(newFam.Name ==''|| newFam.Name==null){
                ApexPages.addMessage( new ApexPages.message(ApexPages.severity.ERROR, 'Please enter a Family name' ) );
    
             
            }
            else if(newFam.Telephone__c ==''|| newFam.Telephone__c==null){
    
               
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR, 'You must enter an phone number'));
            }
            else if(newFam.e_Mail__c ==''|| newFam.e_Mail__c==null){
    
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR, 'You must enter an email'));
    
    
    
    
            }
             else{

            Integer i = 0;
           
                
            for(Family__c f: oldFamP){
    
                if(newFam.Telephone__c == f.Telephone__c && newFam.id != f.id){

                    ApexPages.addMessage(new ApexPages.message( ApexPages.severity.ERROR,'This phone number is already in the system, try a different phone number'));
                   i= i+1;
                } 

                if(newFam.e_Mail__c == f.e_Mail__c && newFam.id != f.id){

                    ApexPages.addMessage(  new ApexPages.message(  ApexPages.severity.ERROR,  'This email is already in the system, try a different email'));
               i= i+1;
                } 

            
        }

            
             if(i<=0){
            insert newFam;
            ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Your registration was Successfully!'));
                 }
            newFam = new Family__c();

             SuccessfulCreationMsgPage = Page.SuccessfulFamilyCreationPage;
            SuccessfulCreationMsgPage.setRedirect(true);
           
     
             }
             return SuccessfulCreationMsgPage;
    }

}