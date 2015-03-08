package event.hackerearth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.hackerearth.model.User;
import event.hackerearth.repository.UserDAO;
import event.hackerearth.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public void saveUser(User user) {
        userDAO.addOrUpdate(user);

    }

    @Override
    public User getUser(String email) {
        User user = userDAO.getUser(email);
        return user;
    }

    @Override
    public User getOrCreateUser(String email, String username) {
        User user = userDAO.getOrCreateUser(email, username);
        return user;
    }

}
