public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String mailPostCode){
        List<Contact> contacts=[Select ID ,Name, LastName,MailingPostalCode FROM Contact WHERE LastName= :lastName AND MailingPostalCode = :mailPostCode];
        System.debug('Found Contacts:' +contacts);
        return contacts;

    }
    
}