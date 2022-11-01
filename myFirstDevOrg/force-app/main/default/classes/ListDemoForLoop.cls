public class ListDemoForLoop {
    public static void iterateIntegerList() {
        List<Integer> listInteger = new List<Integer>();
        //integer must match to integer both sides
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }

    }
    public static integer add(list<integer>intList){
        integer returnSUM = 0;
        //list ---> 10, 15, 21, 10
        for (integer eachInt   : intList) {
            system.debug('BEFORE r = '+ returnSUM);
            system.debug('eachInt = '+ eachInt);
            returnSUM = returnSUM+eachInt;
            
        }
        return returnSUM;
        
    }
}
