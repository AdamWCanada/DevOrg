public  class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(1978, 03, 03);
        date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('My age in months is ' +ageInMonths );

    }
    public void calculateAgeInDays() {
        date birthDate = date.newInstance(1978, 03, 03);
        date todayDate = date.today();

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('My age in days is ' +ageInDays);
    }

    public void printSubscriptionEndDate(){
        date printSubscriptionStartDate = date.today();
        date printSubscriptionEndDate = printSubscriptionStartDate.addDays(1000);
        system.debug('subscription end date is ' + printSubscriptionEndDate);
        
        Integer endDateMonth = printSubscriptionEndDate.month();
        system.debug('end date month'  + endDateMonth); 

        Integer endDateYear = printSubscriptionEndDate.year();
        system.debug('end date year' + endDateYear); 
    }

    public void printOfferEndDateTIme(){
        Datetime offerStartDT = datetime.now();
        Datetime offerEndDT = offerStartDT.addDays(51);
        system.debug('offer end date time ===> ' + offerEndDT);

        Date offerEndDate = offerEndDT.date();
        system.debug('offer end date  ===> ' + offerEndDate);


    }

}
