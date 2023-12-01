package BTL.eventticket.Controller;

import BTL.eventticket.Model.Admin;
import BTL.eventticket.Model.Category;
import BTL.eventticket.Model.Event;
import BTL.eventticket.Reponsitory.AdminRepository;
import BTL.eventticket.Service.*;
import BTL.eventticket.Utils.FileUploadUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private AdminService adminService;

    @Autowired
    private EventService eventService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private UserService userService;

    @Autowired
    private BillService billService;


    @RequestMapping("/adminlogin")
    public String adminlogin() {
        return "adminlogin";
    }

    @PostMapping("/admin")
    public String handleAdminLogin(@ModelAttribute Admin admin, HttpServletRequest request, Model model) {
        System.out.println(admin);
        Admin admin1 = adminService.findAdminByUserNameAndPass(admin.getUserName(), admin.getPass());

        if (admin1 != null) {
            HttpSession session =  request.getSession();
            session.setAttribute("adminUser1", admin1);
            model.addAttribute("products", eventService.findAll());
            model.addAttribute("productCount", eventService.countProduct());
            model.addAttribute("Customer", userService.findAll());
            model.addAttribute("customerCount", userService.countCustomer());
            model.addAttribute("countOrder", billService.countOrder());
            model.addAttribute("message",true);
            return "admin1";
        }
        request.setAttribute("loginResult","false");
        return "adminlogin";

    }

    @RequestMapping("/adminpanel")
    public String adminPanel(HttpServletRequest request,Model model) {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser1") != null) {
            model.addAttribute("products", eventService.findAll());
            model.addAttribute("Customer", userService.findAll());
            model.addAttribute("productCount", eventService.countProduct());
            return "admin1";
        }


        return "redirect:/adminlogin";
    }

    @RequestMapping("/adminLogout")
    public String adminLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/adminlogin";
    }

    @GetMapping("/admin/addproduct")
    public String addproduct(Model model) {
        Event event = new Event();
        model.addAttribute("product", event);
        model.addAttribute("Categories", categoryService.findAll());
        return "addproduct1";
    }

    @PostMapping("/admin/successaddproduct")
    public String addNewProduct(@ModelAttribute("product")  Event event,
                                @RequestParam("image") MultipartFile multipartFile,
                                BindingResult result, Model model) throws IOException {
        if (result.hasErrors()) {
            return "addproduct";
        }

        if (event != null) {
            String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

            String uploadDir = "webapp\\images\\product";
            FileUploadUtils.saveFile(uploadDir, filename, multipartFile);
            event.setProductimage("images\\product\\" + filename);
            eventService.saveAll(event);

        }
        return "redirect:/adminpanel";
    }


    @RequestMapping("/editProduct/{pId}")
    public String edit(@PathVariable("pId") String pId, Model model){
        Event event = eventService.getById(pId);
        model.addAttribute("product", event);
        model.addAttribute("Categories", categoryService.findAll());
        return "editProduct";
    }

    @PostMapping("/admin/successeditproduct")
    public String editProduct(@ModelAttribute  Event event,
                              @RequestParam("PrdId") String PrdId,
                              @RequestParam("image") MultipartFile multipartFile,
                              BindingResult result, Model model) throws IOException {
        if (result.hasErrors()) {
            return "editProduct";
        }

        if (event != null) {
            Event event1 = eventService.getById(PrdId);
            event1.setPrice(event.getPrice());
            event1.setProductDescription(event.getProductDescription());
            String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

            String uploadDir = "webapp\\images\\product";
            FileUploadUtils.saveFile(uploadDir, filename, multipartFile);
            event1.setProductimage("images\\product\\" + filename);
            eventService.saveAll(event1);

        }
        return "redirect:/adminpanel";
    }


    @RequestMapping("/viewProduct")
    public String viewProduct(Model model) {
        model.addAttribute("products", eventService.findAll());
        return "viewProduct";
    }
    @RequestMapping("/deleteProduct/{pId}")
    public String deleteProduct(@PathVariable String pId, Model model) {
        Event event = eventService.getById(pId);
        eventService.deleteById(event);
        return "redirect:/adminpanel";

    }
    @GetMapping("admin/addCategory")
    public String addCategory(Model model){
        Category category = new Category();
        model.addAttribute("category",category);
        return "addCategory";
    }
    @PostMapping("/admin/successaddcategory")
    public String addNewCategory(@ModelAttribute("category")  Category category,
                                 @RequestParam("image") MultipartFile multipartFile,
                                 BindingResult result, Model model) throws IOException {
        if (result.hasErrors()) {
            return "addCategory";
        }

        if (category != null) {
            String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

            String uploadDir = "webapp\\images\\category";
            FileUploadUtils.saveFile(uploadDir, filename, multipartFile);
            category.setImage("images\\category\\" + filename);
            Category category1 = categoryService.saveCategory(category);
            System.out.println(category1);

        }
        return "redirect:/adminpanel";
    }
    @RequestMapping("/viewCategory")
    public String viewCategory(Model model) {
        model.addAttribute("category", categoryService.findAll());
        return "listCategory";
    }
    @RequestMapping("/editCategory/{categoryId}")
    public String editcate(@PathVariable("categoryId") String categoryId, Model model){
        Category category = categoryService.getById(categoryId);
        model.addAttribute("categories", categoryService.findAll());
        return "editCategory";
    }

    @PostMapping("/admin/successeditcategory")
    public String editProduct(@ModelAttribute  Category category,
                              @RequestParam("categoryId") String categoryId,
                              @RequestParam("image") MultipartFile multipartFile,
                              BindingResult result, Model model) throws IOException {
        if (result.hasErrors()) {
            return "editCategory";
        }

        if (category != null) {
            Category category1 = categoryService.getById(categoryId);
            category1.setType(category.getType());
            category1.setImage(category.getImage());
            String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

            String uploadDir = "webapp\\images\\category";
            FileUploadUtils.saveFile(uploadDir, filename, multipartFile);
            category1.setImage("images\\category\\" + filename);
            categoryService.saveCategory(category1);

        }
        return "redirect:/adminpanel";
    }
}

