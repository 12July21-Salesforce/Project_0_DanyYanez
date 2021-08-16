@isTest
private  class NewFamilyPage_Test {


    


    @isTest static void testNewFamily(){
        // Succesful
        NewFamilyControllerClass  controller = new NewFamilyControllerClass ();    
        PageReference pageRef = Page.NewFamilyPage; 
        PageReference ref2= Page.SuccessfulFamilyCreationPage;
        Family__c newFam = new Family__c(Name= 'Carrion',Address__c='123 Jasmine St',Address_2__c='323',City__c='Florence',e_Mail__c='carrrion@example.com',Notes__c='',
        State__c='LA',Status__c='Pending Information',Telephone__c='7872256199',Zip_Code__c='35221'   );
        insert newFam;
         
        Test.setCurrentPage(PageRef);
        pageRef.getParameters().put('id',newFam.id);
         
        System.assertNotEquals(ref2,controller.createNewFamily());

         
        //NewFamilyControllerClass.testController(newFam);


    }
    @isTest static void testNewFamily2(){
        // fail null mail
    NewFamilyControllerClass  controller = new NewFamilyControllerClass ();   
    PageReference pageRef = Page.NewFamilyPage; 
    PageReference ref2= Page.SuccessfulFamilyCreationPage;
    Family__c newFam = new Family__c(Name='Hall',Address__c='123 John Latimer St',Address_2__c='323',City__c='Florence', Notes__c='',e_Mail__c= null,
    State__c='LA',Status__c='Pending Information',Telephone__c='7872250000',Zip_Code__c='35221'   );
    controller.testController(newFam);
     
    Test.setCurrentPage(PageRef);
    pageRef.getParameters().put('id',newFam.id);
     
    System.assertNotEquals(ref2,controller.createNewFamily());

   
    //NewFamilyControllerClass.testController(newFam);


}

@isTest static void testNewFamily3(){
        //fail null phone number
    NewFamilyControllerClass  controller = new NewFamilyControllerClass ();   
    PageReference pageRef = Page.NewFamilyPage; 
    Family__c newFam = new Family__c(Name='Bosh',Address__c='123 John Latimer St',Address_2__c='323',City__c='Florence',e_Mail__c='bosh@example.com',Notes__c='',
    State__c='LA',Status__c='Pending Information',Telephone__c='7872250001',Zip_Code__c='35221'   );
    
    controller.testController(newFam);
    Test.setCurrentPage(PageRef);
    pageRef.getParameters().put('id',newFam.id);
    
    System.assertNotEquals(null,controller.createNewFamily());

   
    //NewFamilyControllerClass.testController(newFam);


}
@isTest static void testNewFamily4(){
    //fail null same phoneNumber
NewFamilyControllerClass  controller = new NewFamilyControllerClass ();   
PageReference pageRef = Page.NewFamilyPage; 
Family__c newFam = new Family__c(Name='Jackson',Address__c='123 John Latimer St',Address_2__c='323',City__c='Florence',e_Mail__c='jack@example.com',Notes__c='',
State__c='LA',Status__c='Pending Information',Telephone__c='7876543122',Zip_Code__c='35221'   );

controller.testController(newFam);
Test.setCurrentPage(PageRef);
pageRef.getParameters().put('id',newFam.id);

System.assertNotEquals(null,controller.createNewFamily());


//NewFamilyControllerClass.testController(newFam);


}
    
     
     
}