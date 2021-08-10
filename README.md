Steps for deploying this org:

  1. Create a new playground (grab your org name, user name and reset your password)
  2. Clone this repository in your computer
  3. Open Visual Studio and link your repository whith your org following the steps in DEX450 1-2
  4. Create 3 users in your org and grab user names
  5. Go to Setup and look for Classic Email Templates
  6. Create a new folder named Family Pending Info
  7. Open a terminal in VS and run this command sfdx force:source:deploy -x manifest/package.xml
  8. Look for the error and find the user names and replace whith the users you grebed from your org (the only importan change is when you replace the recipient for the email alert, that user must be your user name)
  9. You have to repeat this procces about 3 times to find all the error and replace users
  10. When the deployment is succesfull go to your org => Setup => App Manager 
  11. Look for shelter app and make it viseble for System Administrator
  12. In the administrator profile change the object level security CRED and field level security for all the objects
  13. Change Tabs to default ON

REALLY IMPORT DON'T FORGET TO CREATE A NEW BRANCH WHIT THE NAME OF THE FEATURE THAT YOU ARE GONIG TO IMPLEMENT AND WORK IN THAT BRANCH

  
