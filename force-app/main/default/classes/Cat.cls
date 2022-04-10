public class Cat {
    public string name = '';
    public string color = '';
    public Cat() {
        System.debug('Constructor called. created a cat');
    }
    public Cat(string name, string color) {
        this.name = name;
        this.color = color;
    }
}
