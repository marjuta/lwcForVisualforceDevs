/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-12-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountListControllerLwc {
    public AccountListControllerLwc() {

    }
    @AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByEmployeeNumber(Integer numberOfEmployees) {
    return [
        SELECT Name
        FROM Account
        WHERE NumberOfEmployees >= :numberOfEmployees
    ];
}
@AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByRevenue(Decimal annualRevenue) {
    return [
        SELECT Name
        FROM Account
        WHERE annualRevenue >= :annualRevenue
    ];
}
}