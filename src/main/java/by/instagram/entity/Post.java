package by.instagram.entity;

public class Post {
    private int id;
    private String text;
    private User user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Post(String text, User user) {
        this.text = text;
        this.user = user;
    }
}
