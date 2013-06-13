SalesIO JQuery Mobile Force.com Mobile App
===========================================

SalesIO is Force.com JQuery Mobile Iphone App provides all the functionality that a busy sales rep will need to easily manage their day to day lifes. 
SalesIO provide:

<ul>
    <li>Manage the basic Sales SObjects : Leads, Contacts, Accounts, Opportunities</li>
    <li>Manage the basic Support SObject: Cases</li>
    <li>Connect with customers using SMS and Email and Chatter</li>
    <li>Graphs at your fingertips</li>
    <li>Setup meetings and task</li>
    <li>Organize notes and make todo lists</li>
</ul>
Manage SObjects:

    Leads (Create, Update, Delete)
    Contacts (Create, Update, Delete)
    Accounts (Create, Update, Delete)
    Opportunity (Create, Update, Delete)
    Cases (Create, Update, Delete)
     
Visual

    Charts (Morris.js)
    
Connect
  
    Chatter (Create)
    Email (Create)
    SMS (Twilio) (Create)
    
Calendar 
    
    Meeting (Create)
    Task (Create)
    
Organize
  
    Todo (Create)
    Notes (Create)

Getting Started
===============
    
Clone

    Clone: git clone https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App.git
    
Setup

    Upload Static Resources: JQueryMobile1_3_1.resource, MorrisGraph.resource
    Create Page: sales_io.page
    Create Component: SalesIOFooterMenu.component, SalesIOMenu.component
    Create Controller: SalesIOController.cls
        
Setup Twilio

    Install Twilio for Salesforce - https://github.com/twilio/twilio-salesforce
    Setup twilio account, secret, number in SalesIOController.
    
Run 

    https://<instance>.visual.force.com/apex/sales_io
    
Reference
    
    https://github.com/developerforce/MobilePack-jQueryMobile.git
    
Screenshots
===========
    
![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO1.png "Main Screen")
![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO7.png "Main Screen")

![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO9.png "Main Screen")
![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO2.png "Main Screen")

![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO5.png "Main Screen")
![ScreenShot](https://github.com/thysmichels/Sales-IO-JQuery-Mobile-Force.com-Mobile-App/raw/master/Screenshots/SalesIO6.png "Main Screen")
    
New Development
===============

    Sencha Touch Version
    Android Version
