# Sfdc
Apex class
 called "MassEmailSender" with a static method "sendMassEmail" that takes in a list of contacts, a subject, and a body as parameters. The method loops through the list of contacts, creates a SingleEmailMessage for each contact, sets the subject, body, and targetObjectId (the contact's Id), and adds the email to a list.

After the loop, the "Messaging.sendEmail" method is called to send the mass email. It returns a list of SendEmailResult objects that contain information about the success or failure of each email sent. The code then loops through the sendResults list to check the status of each email and outputs a debug message accordingly.

To use this code, you can create a new Apex class in Salesforce, paste the code into the class, and save it. Then, you can invoke the "sendMassEmail" method, passing in the desired list of contacts, subject, and body.

Note: To send mass emails in Salesforce, you need to comply with email deliverability and usage limits set by Salesforce and ensure that appropriate email settings and permissions are configured in your Salesforce org
