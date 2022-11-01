public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('inside print datatype method');

        string batchName = 'Batch10';
        integer totalCandidates = 85;
        boolean IsAdminCompleted = true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(IsAdminCompleted);

        string batchDescription = batchName + ' is amazingg, really.';
       system.debug(batchDescription);

       Decimal decValue = 777888.88;
       system.debug('dec value - ' + decValue);

       Long longValue = 7898L;
       system.debug('long value is --> '+longValue);

       object obj = 'This is a string object';
       system.debug('obj is ---> ' + obj);

       object obj2 = 9874.5;
       system.debug('obj2 is ---> '+obj2);

       Id id1 = '0014x00001LUKELAA5';
       system.debug(id1);
    
    }

    }
