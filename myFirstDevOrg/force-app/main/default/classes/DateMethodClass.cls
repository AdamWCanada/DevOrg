public class DateMethodClass {
    public boolean leapYearCheck(date dt){
        // dt = 2005-01-01;
        system.debug('dt ===> ' + dt);
        integer year = dt.year();
        boolean isLeap = date.isLeapYear(year);
        return isLeap;
    }
}
