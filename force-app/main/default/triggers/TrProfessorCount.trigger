trigger TrProfessorCount on uCourse__c (before insert) {
    if(trigger.isbefore && trigger.isinsert){
        ProfessorCount.func(trigger.new);
    }
}