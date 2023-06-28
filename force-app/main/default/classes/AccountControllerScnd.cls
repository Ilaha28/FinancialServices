public with sharing class AccountControllerScnd {
    @AuraEnabled(cacheable=true)
    public static List<Account> getFinancialServicesAccounts(String accountNameFilter) {
        String query = 'SELECT Id, Name, Owner.Name, Phone, Website, AnnualRevenue FROM Account WHERE Industry = \'Finance\'';
        
        return Database.query(query);
    }
}
