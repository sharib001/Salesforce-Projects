public with sharing class lwcQuestion4 {
    @AuraEnabled(cacheable=true)
    public static List<Account> methodName(string txt, string s){
        try {
            string key = '%'+txt+'%';
            if (s == 'desc') {
                return [select Name, Type, Rating From Account where name like :key order by Name Desc];
            }
            else {
                return [select Name, Type, Rating From Account where name like :key order by Name];
            }
        } 
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}