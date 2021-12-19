package by.instagram.service;

import by.instagram.entity.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {

    private static List<User> allUsers = new ArrayList<>();
    private int incId = 1;

    public User getByLogin(String login){
        for (User allUser : allUsers) {
            if (allUser.getLogin().equals(login)){
                return allUser;
            }
        }
        return null;
    }

    public User getById(int id){
        for(User user: allUsers){
            if(user.getId() == id){
                return user;
            }
        }
        return null;
    }


    public void save(User user){
        user.setId(incId++);
        allUsers.add(user);
    }

    public void updateNameById(int id, String name){
        for(User user: allUsers){
            if(user.getId() == id){
                user.setName(name);
            }
        }
    }

    public void updatePassById(int id, String pass){
        for(User user: allUsers){
            if(user.getId() == id){
                user.setPassword(pass);
            }
        }
    }

    public void updateLoginById(int id, String login){
        for(User user: allUsers){
            if(user.getId() == id){
                user.setLogin(login);
            }
        }
    }

    public boolean containsAuth(String login, String password) {
        return allUsers.contains(new User(login, password));
    }

    public List<User> findAll(){
        return allUsers;
    }

}
