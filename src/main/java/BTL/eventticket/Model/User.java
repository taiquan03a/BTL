package BTL.eventticket.Model;


import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "customer_user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int userId;

    @Column(name = "user_name", unique = true)
    private String userName;

    private String fullName;

    @Column(name = "mobile")
    private String phone;

    private String pass;


    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Bill> bills;

    public User() {

    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }


    public List<Bill> getBills() {
        return bills;
    }

    public void setBill(List<Bill> bills) {
        this.bills = bills;
    }

    @Override
    public String toString() {
        return "CustomerUser [userId=" + userId + ", userName=" + userName + ", fullName=" + fullName + ", phone="
                + phone + ", pass=" + pass + ", bills=" + bills + "]";
    }
}
