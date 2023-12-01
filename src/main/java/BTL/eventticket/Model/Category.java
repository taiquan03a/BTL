package BTL.eventticket.Model;

import jakarta.persistence.*;

import java.util.List;


@Entity
@Table(name = "categories")
public class Category {
    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    private List<Event> events;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "categoryid")
    private int categoryId;
    @Column(name = "type")
    private String type;


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "image")
    private String image;
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public List<Event> getProduct() {
        return events;
    }

    public void setProduct(List<Event> product) {
        this.events = product;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }


    @Override
    public String toString() {
        return "Categories [product=" + events + ", categoryId=" + categoryId + ", type=" + type + "]";
    }
}