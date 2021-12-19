package by.instagram.service;

import by.instagram.entity.Post;

import java.util.ArrayList;
import java.util.List;

public class PostService {
    private static List<Post> posts = new ArrayList<>();
    private static int incId = 1;

    public void save(Post post){
        post.setId(incId++);
        posts.add(post);
    }

    public List<Post> findAll(){
        return new ArrayList<>(posts);
    }

    public Post findById(int id){
        for (Post post: posts) {
            if(post.getId() == id){
                return post;
            }
        }
        return null;
    }
}
