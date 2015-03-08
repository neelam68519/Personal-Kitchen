package event.hackerearth.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.hackerearth.model.Item;
import event.hackerearth.repository.ItemDAO;
import event.hackerearth.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	private ItemDAO itemDAO;

	public void setItemDAO(ItemDAO itemDAO) {
		this.itemDAO = itemDAO;
	}

	@Override
	public List<Item> getItems(String cityInfo, String localityInfo) {
		return itemDAO.getAllItems(cityInfo, localityInfo);
	}

    @Override
    public Item getItem(String itemId) {
        // TODO Auto-generated method stub
        return itemDAO.getItem(itemId);
    }

    @Override
    public void addItem(Item item) {
        itemDAO.addOrUpdate(item);
        
    }

}
