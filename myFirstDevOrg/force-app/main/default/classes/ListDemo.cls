public class ListDemo {
    public static string candidateList(integer i){
        List<String> listCandidates = new List<String>();
        //string must match to string both sides
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('candidates are ' + listCandidates);

        string returnStr = '';
        if (i >=0 && i<listCandidates.size()) {
            returnStr = listCandidates[i];
        }else {
            returnStr = 'no values found';
        }
        return returnStr;
    }

    public static void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        //integer must match to integer both sides
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);
        System.debug('list integer ' + listInteger);

        integer index3value = listInteger[3];
        system.debug('index 3 value is ---> ' + index3value);

        integer index2value = listInteger.get(2);
        system.debug('index 2 value is ---> ' + index2value);

    }
    public static void allCats() {
        Cat falconsCat = new Cat ('fluffykins', 'white');
        Cat vitapsCat = new Cat ('van', 'white');
        Cat sumitsCat = new Cat ('simba', 'brown');
    
        Cat siCat = new Cat('fluffykins', 'white');
        Cat vk = new Cat('van', 'white');
        Cat s = new Cat('simba', 'brown');   

        List<Cat> cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(sumitsCat);
        cats.add(siCat);
        cats.add(vk);
        cats.add(s);

        System.debug('all cats are ' + cats);

        // get cat on index = 3, if cats list is not empty
        if (!cats.isEmpty()) {
            cat catAt3 = cats[3];
            System.debug('cat at 3 is ' + catAt3);
            
        }
    }

    
}
