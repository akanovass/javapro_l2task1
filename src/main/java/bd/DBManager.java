package bd;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Item> items = new ArrayList<>();
    private static Long id=3L;

    static {
        Item ph1 = new Item(1L,"Samsung 50A", 250000, 30);
        Item ph2 = new Item(2L,"IPhone 13 pro",560000,45);
        items.add(ph1);
        items.add(ph2);
    }

    public static void addItem(Item item){
        items.add(item);
        id++;
    }
    public static ArrayList<Item> getItems(){
        return items;
    }

    public static Long getId() {
        return id;
    }

    public static void setId(Long id) {
        DBManager.id = id;
    }
}
