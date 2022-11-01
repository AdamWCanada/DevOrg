public class SetDemo {
    public static void citySet() {

        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');
        system.debug('cities set ' + cities);

        

    }
    public static void randomIntegerSet(){
        Set<Integer> randomIntegers = new Set<Integer>();
        randomIntegers.add(10);
        randomIntegers.add(21);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        System.debug('random integers are ' + randomIntegers);

    }
    // Bir method olusturuyoruz ancak seti method name olarak yaziyoruz.
    public static Set<Integer> setFromList(List<Integer> l1){
        Set<Integer> s1 = new Set<Integer>();
        s1.addAll(l1);
        return s1;

    }
    public static void capitalizeAllSet(){
        // create a set
        // convert EACH element to UPPERCASE
        // and add it in a NEW SET
        //
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');
        system.debug('cities set ' + cities);

        Set<String> citiesInCaps = new Set<String>();
        for (String eachCity : cities){
            String tempStr = eachCity.toUpperCase();
            citiesInCaps.add(tempStr);

        }
        
        System.debug('cities in capital ' + citiesInCaps);
    }
}
