package BTL.eventticket.Reponsitory;

import BTL.eventticket.Model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin,Integer> {
    public Admin findAdminByUserNameAndPass(String username,String pass);

}
