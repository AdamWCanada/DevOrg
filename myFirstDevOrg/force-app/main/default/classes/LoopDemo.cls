public class LoopDemo {
    public void print_int_while(){
        integer count =1;
        while (count <=25) {
            system.debug(count);
            count++;
            
        }
    }

    public void print_N_numbers(integer n){
        for (integer i=0; i<n; i++) {
            system.debug(i);
            
        }

    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
        // i=4 ... 5 <94 .... 4++ (5) 5++ (6)
        for (integer i=startInt; i<=endInt; i++) {
            integer modI = math.mod(i, 2);
            if (modI==1) {system.debug(i);
            }
            
        }

    }
    public void print_N_Even_Numbers (Integer startInt, Integer endInt){
        for (Integer i = startInt; i < endInt; i++) {
            Integer modI = Math.mod(i, 2);
            if (modI==0) {System.debug(i);
            }
            
        }

    }
}
