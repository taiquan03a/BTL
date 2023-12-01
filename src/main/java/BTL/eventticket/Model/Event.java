package BTL.eventticket.Model;

import jakarta.persistence.*;

@Entity
@Table(name = "Products")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "p_id")
    private int pId;
    @Column(name = "productname")
    private String productName;
    @Column(name = "productdescription")
    private String productDescription;

    @Column(name = "productimage")
    private String productimage;
    private String ngay;

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    private Double price;

    public void setCategory(Category category) {
        this.category = category;
    }

    @ManyToOne
    private Category category;

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductimage() {
        return productimage;
    }

    public void setProductimage(String productimage) {
        this.productimage = productimage;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategories(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Products [pId=" + pId + ", productName=" + productName + ", productDescription=" + productDescription
                + ", productimage=" + productimage + ", price=" + price + ", categories=" + category + "]";
    }
}
