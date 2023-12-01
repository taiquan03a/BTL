package BTL.eventticket.ServiceImpl;

import BTL.eventticket.Model.User;
import BTL.eventticket.Reponsitory.UserRepository;
import BTL.eventticket.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public Iterable<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public User authenticaCustomerUser(String userName, String pass) {
        return userRepository.findUserByUserNameAndPass(userName,pass);
    }

    @Override
    public long countCustomer() {
        return userRepository.count();
    }

    @Override
    public User findUserByUserId(Integer userId) {
        return userRepository.findUserByUserId(userId);
    }
}
