public with sharing class AddAccountController {
    
    public List <Account> account = new List <Account>();
    public Account act{get;set;}
    
    public AddAccountController() {
        act = new Account();
    }

    public List <Account> getAccount() {
        account = [SELECT Id, Name, Site, Type
                   FROM Account
                   ORDER BY createddate desc
                   LIMIT 20];
        return account;
    }

    public Pagereference cancel()   {
        return null;
    }

    public Pagereference save() {
        System.debug('act name: '+ act.Name + ' = ' + act.accountNumber);
        upsert act;
        return null;
    }
}
