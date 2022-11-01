public class dataTypesPrimitive {
    public void basicDataTypes() {
        String batchName = 'Eagles';
        Integer totalStudents = 85;
        Boolean isAdminCompleted = true;

        String batchDescription = batchName + ' are the best.';
        
       System.debug(batchName);
       System.debug(totalStudents);
       System.debug(isAdminCompleted);
       System.debug(batchDescription);
       System.debug('This batch is ' + batchName + ' and It has  ' + totalStudents + ' students ' + 'and ' + batchName + ' are the best.');

       Decimal bookprice =19.99;
       System.debug('Price is ' + bookprice);

       long longvalue = 2147483648L;
       System.debug('Long ' + longvalue);

       Object obj = 'This is a string';
       Object obj2 = 10;
       System.debug(obj);
       System.debug(obj2);

       //ID id1 = '001D000000000jugrrrrskkn';
      // System.debug(id1);

    }

    public void stringMethod1(){
        string sessionDescription = 'I am learning string methods APEX';

        integer lengthOfString = sessionDescription.length();
        System.debug('Length of the string var is ' + lengthOfString);

        String sessionDescriptionInCaps = sessionDescription.toUpperCase();
        System.debug('In caps, CAPITILIZED: ' + sessionDescriptionInCaps);

        String sessionDescriptionInNotCaps = sessionDescription.toLowerCase();
        System.debug('In lower case, LOWER: ' + sessionDescriptionInNotCaps);

        Boolean containsAPEX = sessionDescription.contains('apex');
        System.debug('has apex? ' + containsAPEX);

        Boolean containsAPEX2 = sessionDescription.contains('APEX');
        System.debug('has apex? ' + containsAPEX2);

        Boolean containsAPEX3 = sessionDescription.containsIgnoreCase('apex');
        System.debug('has apex? ' + containsAPEX3);

        String trimmed = sessionDescription.trim();
        System.debug('TRIMMED ' + trimmed);

        Boolean esittir = sessionDescription.equals('apex');
        System.debug('has apex? ' + esittir);

    }

    public void printNewDate(){
        system.debug('Create new Date instance');

        // Date newInstance
        Date newDate = Date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        System.debug('date is ' + newDate);
        System.debug('date is ' + newDate2);

        //Date.today();
        // to get today's date use date.today(); method
        Date todayDate = Date.today();
        System.debug('Today date is ' + todayDate);


    }
    public void printNewTime(){
        system.debug('Create new time instance');

        // Date newInstance();
        Time myTime = time.newInstance(18, 20, 2, 30);
        Time yourTime = time.newInstance(15, 15, 2, 20);
        System.debug('date is ' + myTime);
        System.debug('date is ' + yourTime);

        //Today's Date:
        date newDate = Date.today();

        //New Time:
        Time newTime = time.newInstance(9, 8, 0, 0);
        Time tryTime = time.newInstance(23, 23, 23, 23);
        System.debug(newDate);
        System.debug(newTime);
        System.debug(tryTime);

        //Create new datetime from DATE and TIME:
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        System.debug('Date is ' + dt1); 

        // Create datetime using YEAR, MONTH, DAY. Time will be midnigth (000000).
        Datetime dt2 = Datetime.newInstance(2025, 1, 9);
        System.debug('Date 2 is ' + dt2); 

        //Create datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        Datetime dt3 = Datetime.newInstance(2021, 10, 9, 10, 10, 10);
        System.debug('Date 2 is ' + dt3); 

        // Create NewInstance from milliseconds
        //Construct a new datetime using milliseconds since Jan 1 1970 00:00:00 GMT.
        Long longtime = 1341828183000L;
        Datetime dt4 = Datetime.newInstance(longtime);
        system.debug('Long time is ' + dt4);

        // Create GMT datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        Datetime dt5 = Datetime.newInstance(1998, 1, 28, 18, 2, 3);
        System.debug('Date 2 is ' + dt5); 

        //Current Time now();
        Datetime dt6 = Datetime.now();
        System.debug('Now is ' + dt6); 

    }

    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(1978, 3, 3);
        date todayDate = date.today();
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('Age in MONTHS: ' + ageInMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('Age in DAYS: ' + ageInDays);
    }

    public void offerEndDateTime(){
        datetime dtnow = datetime.now();
        datetime dtOfferEnds = dtnow.addHours(24);
        system.debug('Offer will end on: ' + dtOfferEnds);

        date offerEndDate = dtOfferEnds.date();
        system.debug('Offer end date is: ' + offerEndDate);

        datetime dttoday=Datetime.now();
        Datetime expireDate= dttoday.addYears(5);
        System.debug(expireDate);


    }
}
