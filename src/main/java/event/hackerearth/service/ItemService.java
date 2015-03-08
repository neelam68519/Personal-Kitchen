package event.hackerearth.service;

import java.util.List;

import event.hackerearth.model.Item;

public interface ItemService {
	List<Item> getItems(String cityInfo, String localityInfo);

    Item getItem(String itemId);

    void addItem(Item item);

}
