package BTL.eventticket.Controller;

import BTL.eventticket.Model.Bill;
import BTL.eventticket.Model.Event;
import BTL.eventticket.Service.BillService;
import BTL.eventticket.Service.CategoryService;
import BTL.eventticket.Service.EventService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller

public class EventController {
    @Autowired
    private EventService eventService;
    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BillService billService;

    @GetMapping("/eventdetail/{pId}")
    public String productdetails(@PathVariable String pId, Model model )  {
        System.out.println("Producct Id : " + pId);

        model.addAttribute("event", eventService.getById(pId));
        model.addAttribute("category",categoryService.findAll());
        return "eventdetail";
    }
    @GetMapping("events/{categoryId}")
    public String GetEventsByCategoryID(ModelMap modelMap, @PathVariable Integer categoryID){
        Iterable<Event> events = eventService.findAllByCategoryCategoryId(categoryID);
        modelMap.addAttribute("events",events);
        return "eventsList";
    }
    @RequestMapping("/chekout/{pId}")
    public String handle_checkout(@PathVariable String pId, HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user1") == null) {
            return "redirect:/login";

        }
        model.addAttribute("product",eventService.getById(pId));
        return "chekout";
    }

    @PostMapping("/chekout_form")
    public String handle_placing_order(@ModelAttribute Bill bill, Model model) {
        billService.saveAll(bill);
        return "orderPlaced";

    }

}