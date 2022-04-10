public class operationsHelper {
    //part 2.1.a sum
    public static decimal sumOfListValues(List <decimal> values){
        decimal sum;
        if(values.size()>0){
            sum=0;
            //datatype
            for(decimal val: values) {
                sum = sum + val;
            }
        }
        else{
            system.debug('Pleas provide values to do the operation!');
        }
        return sum;
    }

    // part 2.1.b Average
public static decimal AverageOfValues(list<decimal>params) {
    decimal average;
    if (params !=null && !params.isEmpty()) {
      decimal sum = sumOfListValues(params);
      integer size = params.size();
      average = sum/size;  
    } else {
        system.debug('Gelen liste ile ilgili bir problem var...');
}
    return average;
}
    //Part 2.1.c. Highest
    public static decimal highestOfValue(list<decimal> elements){
        decimal highest;
        if (elements !=null && !elements.isEmpty()){
        highest = elements[0];
        for(decimal el: elements){
            if(el > highest){
                highest = el;
            }
        }    
        } else {
          System.debug('Gelen liste ile ilgili bir problem var....');  
        }
        return highest;
    }

    // public 2.1.d Lowest
    public static decimal LowestOfValue(list<decimal>listem){
        decimal Lowest;
        if (listem != null && !listem.isEmpty()) {
        Lowest = listem[0];
        for (decimal lis : listem) {
         if (lis < Lowest){
             Lowest = lis;
         }  
        }   
        } else {
            System.debug('Gelen liste ile ilgili bir problem soz konusu...');
        }
        return Lowest;
    }
    // Part 2.1.extra 2 kişinin skorlarını alan 4 değişkenli bir metot ortalamaları karşılaştırıp yüksek olanı dönsün.
    public static string win(string name1, list<decimal> score1, string name2, list<decimal>score2){
        string returnString = '';
        if (name1 == null || name1=='') {
            name1 = 'name1';
        } if (name2 == null || name2 =='') {
            name2 = 'name2';
        } if (score1 !=null && !score1.isEmpty() && score2 !=null && !score2.isEmpty()) {
            decimal average1 = Math.floor(AverageOfValues(score1));
            decimal average2 = Math.floor(AverageOfValues(score2));
            System.debug('average 1 = ' + average1);
            System.debug('average 2 = ' + average2);
                if (average1>average2) {
                    returnString = name1;
                
                } else if (average1<average2){
                    returnString = name2;
                }
        } else {
            returnString = 'Listenizde birproblem var ';
        }
        return returnString;
    }
    // Part 2.2 Reverse; sondan başa doğru listenin elemanlarını yazdırma..
    public void reverseMethod(list<decimal> reversePrint){
        if (reversePrint != null && !reversePrint.isEmpty()) {
            for (integer i = reversePrint.size()-1; i>=0; i--){
                System.debug(reversePrint[i]);
            }
        } else {
          System.debug('Gelen liste ile ilgili bir problem soz konusu...');   
        }
    }
    // Part 3 Extra verilen sayıya göre fibonacci dizisini dönen bir metot
    // 8. eleman ile 7. elemanı bölüp altın oranı bulun.
    public static void fibonacci(integer num) {
    if(num == 0){
        System.debug('{0}');
    }    
    if (num != null && num>0) {
    List<integer> fib = new List<integer>{0,1};
    for (integer i =2; i<num; i++){
        integer a = fib.get(i-1) + fib.get(i-2);
        fib.add(a);
    }
    system.debug('fibonacci dizisi ' + num + ' sayisi icin = ' + fib);
    } 
    else {
        System.debug('error');
    }
    
        }
}
