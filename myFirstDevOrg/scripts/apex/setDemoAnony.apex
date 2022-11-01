SetDemo.capitalizeAllSet();
SetDemo.citySet();
SetDemo.randomIntegerSet();

List<Integer> l55 = new List<Integer> ();
l55.add(55);
l55.add(99);
l55.add(55);
l55.add(99);
l55.add(88);
l55.add(88);
Set<Integer> s12 = SetDemo.setFromList(l55); 
System.debug(s12);