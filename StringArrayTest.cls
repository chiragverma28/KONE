public class StringArrayTest{
        public static lIST<String> generateStringArray(Integer n) {
        List<String> Test = new List<String>();
        for(Integer i=0;i<n;i++) {
        Test.add('Test'+' '+ i);
        }
        System.debug(Test);
        return Test;
        
        }
}