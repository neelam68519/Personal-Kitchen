package event.hackerearth.repository;

import java.util.List;

import event.hackerearth.model.Item;

public interface ItemDAO {

	public List<Item> getAllItems(String cityInfo, String localityInfo);
	
	public void addOrUpdate(Item item);

    public Item getItem(String itemId);

}
