//TODO: ALWAYS be sure to substitute your org's namespace where you see <namespace>
public class ExpenseController {
   
    //Action method to return the expense list called from client side JavaScript controller
    @AuraEnabled
    public static List<simple_school__Expense__c> getExpenses() {

        return [SELECT id
                    ,name
                    ,simple_school__amount__c
                    ,simple_school__client__c
                    ,simple_school__date__c
                    ,simple_school__reimbursed__c
                    ,simple_school__approved__c 
                FROM 
                    simple_school__Expense__c 
                ORDER BY 
                    createdDate ASC
               ];
    }    

    //Save method called from client side JavaScript controller
    @AuraEnabled
    public static simple_school__Expense__c saveExpense(simple_school__Expense__c expense) {
        upsert expense;
        return expense;
    }
   
}