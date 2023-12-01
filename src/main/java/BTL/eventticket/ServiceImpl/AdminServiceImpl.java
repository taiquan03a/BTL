package BTL.eventticket.ServiceImpl;

import BTL.eventticket.Model.Admin;
import BTL.eventticket.Reponsitory.AdminRepository;
import BTL.eventticket.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminRepository adminRepository;
    @Override
    public Admin findAdminByUserNameAndPass(String username, String pass) {
        return adminRepository.findAdminByUserNameAndPass(username ,pass);
    }
}
