package hrms.main.dashboard.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hrms.main.dashboard.dao.DashboardDAO;
import hrms.main.dashboard.dto.DashboardDTO;
import hrms.main.login.controller.LoginController;
import hrms.main.login.dto.LoginDTO;

@Controller
public class DashboardController {
	
private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    
    @Autowired
    DashboardDAO dashboardDAO;

    @GetMapping("/dashboard")
    public String showDashboard(@RequestParam(name = "username", required = false) String username, HttpSession session, Model model) {
        LoginDTO loggedInUser = (LoginDTO) session.getAttribute("loggedInUser");
        
        if (loggedInUser != null) {
            model.addAttribute("username", loggedInUser.getUserName());
            model.addAttribute("userRoleId", loggedInUser.getUserRoleId());
            model.addAttribute("employeeNo", loggedInUser.getEmployeeNo());
            System.out.println("==================== Username from request dashboard side: ====================" + loggedInUser.getUserName());
            System.out.println("==================== UserRoleId from session: ====================" + loggedInUser.getUserRoleId());
        } else {
            return "redirect:/login";
        }

        return "dashboard/dashboard";
    }

}