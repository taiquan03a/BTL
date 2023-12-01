package BTL.eventticket.Service;

import BTL.eventticket.Model.User;

public interface UserService {
    public Iterable<User> findAll();
    public User saveUser(User user);
    public User authenticaCustomerUser(String userName,String pass);
    public long countCustomer();
    User findUserByUserId(Integer userId);
}
