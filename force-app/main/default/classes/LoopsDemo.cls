public class LoopsDemo {
    public void print_int_while() {
        Integer count = 1;
        while (count <= 25) {
            System.debug(count);
            count++;            
        }
    }
    public void print_N_Numbers(integer n) {
        for (integer i = 0; i<=n; i++) {
            System.debug(i);
        }
    }
    public void print_N_Odd_Numbers(integer startInt, integer endInt) {
        for (integer i = startInt; i<=endInt; i++) {
            if(math.mod(i, 2) == 1)
            System.debug(i);
        }
    }
    public string  (integer i) {
        string todayIs = '';
        switch on i {
            when 1 { todayIs = ' Monday';
            } when 2 {
                todayIs = ' Tuesday';
            } when 3 {
                todayIs = ' Wednesday';
            } when 4 {
                todayIs = ' Thursday';
            } when 5 {
                todayIs = ' Friday';
            } when 6 {
                todayIs = ' Saturday';
            } when 7 {
                todayIs = ' Sunday';
            } when else {
                if(i > 7) todayIs += ' Not valid date';
            }
         }
         return todayIs;

    }
}
