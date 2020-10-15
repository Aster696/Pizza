package com.pizza404.model;


public class Pizza {

    private int id;
    private int pizza_id;
    private String pizza_name;
    private String description;
    private String images;
    private String link;
    private String imglink;
    private int quantity;
    private float price;
    private String stock;
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPizza_id() {
        return pizza_id;
    }

    public void setPizza_id(int pizza_id) {
        this.pizza_id = pizza_id;
    }

    public String getPizza_name() {
        return pizza_name;
    }

    public void setPizza_name(String pizza_name) {
        this.pizza_name = pizza_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getImglink() {
        return imglink;
    }

    public void setImglink(String imglink) {
        this.imglink = imglink;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }
    
}
