package event.hackerearth.repository;

import event.hackerearth.model.User;

public interface UserDAO {
	public void addOrUpdate(User user);

    public User getUser(String email);

    public User getOrCreateUser(String email,String username);

}
