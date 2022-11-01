public class StringDemoClass {
    public void stringMethod1() {
        string sessionDescription = 'Learning string method in apex langugae';

        //1. length
        integer lengthOfstr = sessionDescription.length();
        System.debug('Length of string is = ' + lengthOfstr);

        //2. capitalize
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is ..' + sessionDescriptionInCaps);

        //3. contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex?? ' + containsApex);

        //3x. contains apex
        boolean containsApex2 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains APEX ' + containsApex2);

        //4. contains 'salesforce'
        boolean containsApex3 = sessionDescription.contains('salesforce');
        system.debug('contains salesforce?? ' + containsApex3);




    }
}
