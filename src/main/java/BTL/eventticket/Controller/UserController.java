package BTL.eventticket.Controller;

import BTL.eventticket.Model.Event;
import BTL.eventticket.Model.User;
import BTL.eventticket.Service.EventService;
import BTL.eventticket.Service.UserService;
import BTL.eventticket.Utils.FileUploadUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    EventService eventService;
    @RequestMapping("/login")
    public String customerlogin() {
        return "login";

    }

    @PostMapping("/home")
    public String handle_customer_login(@ModelAttribute User user, HttpServletRequest request, Model model) {
        User user1 = userService.authenticaCustomerUser(user.getUserName(), user.getPass());
        System.out.println(user1);
        if (user1 != null) {
            HttpSession session =  request.getSession();
            session.setAttribute("user1",user1);
            Iterable<Event> events = eventService.findAll();
            model.addAttribute("events",events);
            return "userindex";
        }


        model.addAttribute("message", "Invalid Credentials");
        return "login";
    }

    @RequestMapping("/customerpanel")
    public String customerPanel() {
        System.out.println("Customer Panel");
        return "customerpanel1";

    }

    @RequestMapping("/logoutuser")
    public String LogoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        System.out.println("user logout");
        return "redirect:/login";
    }

    @GetMapping ("/register")
    public String customer_registration() {
        return "register";
    }

    @PostMapping("/register")
    public String handle_customer_registration(@ModelAttribute User user, Model model) {
        User user1 = userService.saveUser(user);
        System.out.println(user1);
        return "login";
    }
    @GetMapping("/profile/{userId}")
    public String getProfile(@PathVariable Integer userId, Model model){
        model.addAttribute("profile",userService.findUserByUserId(userId));
        return "profile";
    }
    @PostMapping("/profile/successeditprofile")
    public String editProduct(@ModelAttribute  User user,
                              @RequestParam("UserId") Integer userId,
                              BindingResult result) throws IOException {
        if (result.hasErrors()) {
            return "profile";
        }

        if (user != null) {
            User user1 = userService.findUserByUserId(userId);
            user1.setFullName(user.getFullName());
            user1.setPhone(user.getPhone());
            user1.setUserName(user.getUserName());
            user1.setPass(user.getPass());
            userService.saveUser(user1);
        }
        return "redirect:/userindex";
    }
}
