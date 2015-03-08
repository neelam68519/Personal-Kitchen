package event.hackerearth.service;

import event.hackerearth.model.User;

public interface UserService {

	public void saveUser(User user);

    public User getUser(String email);

    public User getOrCreateUser(String email, String username);

}
