trigger ContactTrigger on Contact (after insert) {

List<Messaging.SingleEmailMessage> emailMessages = new List<Messaging.SingleEmailMessage>();

    for (Contact newContact : Trigger.new) {
       
        id ownerID = newContact.OwnerId;

        User owner = [SELECT Email FROM User WHERE Id = :ownerID LIMIT 1];

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new List<String>{ owner.Email });
        email.setSubject('New Contact Created');
        email.setPlainTextBody('A new contact has been created with the name: ' + newContact.FirstName + ' ' + newContact.LastName + '.');

        emailMessages.add(email);
        
    }
    
    Messaging.sendEmail(emailMessages);
}