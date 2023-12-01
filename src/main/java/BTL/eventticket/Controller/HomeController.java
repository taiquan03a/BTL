package BTL.eventticket.Controller;



import BTL.eventticket.Model.Event;
import BTL.eventticket.Reponsitory.EventRepository;
import BTL.eventticket.Service.EventService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private EventService eventService;

    @GetMapping("")
    public String index(ModelMap model, HttpServletRequest request) {
        Iterable<Event> events = eventService.findAll();
        model.addAttribute("events",events);
//
//		System.out.println(model);

        return "trangchu";
    }
//    @GetMapping("/index")
//    public String getHomePage(Model model, HttpServletRequest request) {
//        //	HttpSession session = request.getSession();
//        //	Users user = (Users) session.getAttribute("currentUser");
///*		if (user == null)
//			return "redirect:/";
//		else {
//		//	model.addAttribute("contacts", contactDao.getUserContacts(user));
//		}*/
//        return "trangchu";
//    }

}

