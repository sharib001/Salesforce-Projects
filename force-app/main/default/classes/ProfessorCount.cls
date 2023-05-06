public class ProfessorCount {
    public static void func(List<uCourse__c> cList){
        List <uCourse__c> cList1 = [select Id From uCourse__c where Professor__c =: cList[0].Professor__c];
        if(cList1.size() >= 2){
            cList[0].addError('Not more than 4 Professor');
        }
    }
}