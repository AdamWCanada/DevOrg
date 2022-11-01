DatetimeMethodsDemo dtm = new DatetimeMethodsDemo();
dtm.printOfferEndDateTIme();
dtm.calculateAgeInMonths();
dtm.calculateAgeInDays();
dtm.printSubscriptionEndDate();

datetime birthDate = datetime.newInstance(1978, 03, 03, 12, 00, 00);
long longBirthDate = birthDate.getTime();
System.debug('birth date in miliseconds from 1970 Jan 1 0000 GMT ===> ' + longBirthDate);