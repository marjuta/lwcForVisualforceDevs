/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-12-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountListControllerLw {
    public AccountListControllerLw() {

    }
    @AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByEmployeeNumber(Integer numberOfEmployees) {
    return [
        SELECT Name
        FROM Account
        WHERE NumberOfEmployees >= :numberOfEmployees
    ];
}
}

