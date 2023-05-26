
java
public class MassEmailSender {
    public static void sendMassEmail(List<Contact> contacts, String subject, String body) {
        List<Messaging.SingleEmailMessage> emailList = new List<Messaging.SingleEmailMessage>();
        
        for (Contact con : contacts) {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setSubject(subject);
            email.setPlainTextBody(body);
            email.setTargetObjectId(con.Id);
            emailList.add(email);
        }
        
        List<Messaging.SendEmailResult> sendResults = Messaging.sendEmail(emailList);
        
        for (Messaging.SendEmailResult result : sendResults) {
            if (result.isSuccess()) {
                System.debug('Email sent successfully.');
            } else {
                System.debug('Email sending failed. Error: ' + result.getErrors()[0].getMessage());
            }
        }
    }
}
}

