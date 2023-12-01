package BTL.eventticket.Reponsitory;

import BTL.eventticket.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    User findUserByUserNameAndPass(String username, String pass);
    User findUserByUserId(Integer userId);
}
