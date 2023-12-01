package BTL.eventticket.Service;

import BTL.eventticket.Model.Admin;

public interface AdminService {
    public Admin findAdminByUserNameAndPass(String username, String pass);
}
