Shelter League Portal, by Team Alchemy-MVC

Project Description:

    Pet Shelter Portal is an Experience Cloud site where external users can navigate through the different 
    Visualforce pages to review information about local shelters and the pets that they house. 
    These users can then walk through the adoption process, make donations to shelters and more.

Technologies Used:

    - VS Code
    - GitHub Repository
    - Experience Cloud Site
    - Trailhead Playground
    - Apex
    - Visualforce Pages

Completed Features:

    - Shelter Tab: Page that represents all of the individual locations within the org's Shelter League.
    Entries are shown in a list with basic contact and locaion information for each. Prospective users can
    browse and see which locations in the League are closest to them, or have the widest variety of pets to
    choose from. They can then call or visit the shelter of their choosing to begin the adoption process, or
    use the Pet Adoption wizard to do it online.
    
    - Know Your Pets Tab: List of the pets, afther click on a pet you can get details about them
    
    - Breed Tab: Shows a list of breeds, with an option to create new breed, when press the button 
    brings up a new page to enter a new breed
    
    - Register for Adoption Tab: Register new families to be able to adopt a pet, once you insert 
    you will be redirected to a new page with a successful creation message
    
    - Start Adoption Process Tab: From here you can search all pets by breed, you must select a pet 
    and a family to create a new adoption process, you are going to recieve and error if you are trying
    to adopt a pet that is already adopted
    
    - Make a Donation Tab: List of registered shelters with a checkbox to select shelter, you will recieve an 
    error if you press the button with zero or more than one shleter, once selected you will go to a new page 
    where you can fill out what you are donating, afther make a donation the shelter will recieve an email with 
    donated items and the fileds that you filled automatically will be cleared for future donations
    
To-Do List:

    - More Styling
    - Implement Lightning Knowlege
    - Add available filters and pagination for the pages with records
    - Improve Home Page

Getting Started:
    
    - Create a new playground (grab your org name, user name and reset your password)
    - git clone [url] (include all environment setup steps)
    - Open Visual Studio and link your repository whith your org following the steps in DEX450 1-2
    - Create 3 users in your org and grab user names
    - Go to Setup and look for Classic Email Templates
    - Create a new folder named Family Pending Info
    - Open a terminal in VS and run this command sfdx force:source:deploy -x manifest/package.xml
    - Look for the error and find the user names and replace whith the users you created in your org 
    - (the only importan change is when you replace the recipient for the email alert, that user must be your user name)
    - You have to repeat this procces about 3 times to find all the error and replace users

Usage:

    - Once you go to your playground you can directly interact with the app
    - If you want to visit the site
    - Go to Setup (look for All Sites)
    - Select Workspaces next to Shelter League
    - Click on Administration => Settings
    - Use the link to launch the site
    - You will see the site after this step
    
Contributors:

    Mason Smith / Jay Nyawera / Markus Metli / Alejandro Yanez / Christian Aviles / Anshul Bharati
    
