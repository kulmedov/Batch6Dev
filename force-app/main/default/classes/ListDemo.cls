public class ListDemo {
    public static string candidateList(integer i) {
        // create empty list of string
        list<string> listCandidates = new list<string>();
        listCandidates.add('Bega');
        listCandidates.add('Ahmet');
        listCandidates.add('Ayse');
        listCandidates.add('Bega');
        System.debug('candidates are ' + listCandidates);
        string returnStr = '';
        if (i>= 0 && i < listCandidates.size()) {
           returnStr = listCandidates[i]; 
        } else {
            returnStr = 'No values found';
        }
        return returnStr;        
    } 
    public static void randomIntegerList() {
    list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(20);
        listInteger.add(10);
        listInteger.add(15);

        integer index3value = listInteger.get(3);
        //OR
        integer index3value1 = listInteger[3];
        System.debug('index3value = ' + index3value);
        System.debug('index3value1 = ' + index3value1);

        System.debug('list of random integers ' + listInteger);
    }
    public static void allCats() {
        cat falconsCat = new cat ('Tom', 'Black');
        cat vitapsCat = new cat ('Simba', 'Gray');
        cat BegasCat = new cat ('Lucyfer', 'White');

        list<cat> cats = new list<cat> ();
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(BegasCat);
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(BegasCat);

        System.debug('all cats ' + cats);
        boolean catsIsEmpty = cats.isempty(); //false
        if(!catsIsEmpty) {
            cat catAt3 = cats[3];
            System.debug('Cat at 3 ' + catAt3);
        }
    }
    public static void Allcars() {
     car bm = new car(); // bm is empty
     car c1; // c1 will be null here
     
     list<car> cars = new list <car>();
     cars.add(bm);
     cars.add(new car());

     car lm = cars[1];
     System.debug('lm instance = ' + lm);
    }
    public static void iterateIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(20);
        listInteger.add(10);
        listInteger.add(15);

        for(integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
    public static void listToSetDemo() {
        list<integer> listInteger = new list<integer>();
            listInteger.add(10);
            listInteger.add(15);
            listInteger.add(20);
            listInteger.add(10);
            listInteger.add(15);
    SetDemo.setFromList(listInteger);
    }
}