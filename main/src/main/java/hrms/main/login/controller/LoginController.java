package hrms.main.login.controller;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hrms.main.login.dao.LoginDAO;
import hrms.main.login.dto.LoginDTO;

@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    
    @Autowired
    LoginDAO loginDAO;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView users() {
        logger.debug("Entering users() method");
        System.out.println(loginDAO.getAllUsers());
        ModelAndView mav = new ModelAndView("login/login");
        mav.addObject("users", loginDAO.getAllUsers());
        
        return mav;
    }
    
    @PostMapping("/login")
    public String login(@RequestParam("username") String username, 
                        @RequestParam("password") String password, 
                        Model model, 
                        HttpSession session) {
        LoginDTO user = loginDAO.authenticateUser(username, password);

        if (user != null) {
            session.setAttribute("loggedInUser", user);
            return "redirect:/dashboard?username=" + username;
        } else {
            return "redirect:/login";
        }
    }
}