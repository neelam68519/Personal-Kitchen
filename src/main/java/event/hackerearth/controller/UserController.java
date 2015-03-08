package event.hackerearth.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import event.hackerearth.model.User;
import event.hackerearth.service.UserService;

@Controller
public class UserController {

	@Autowired()
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/saveuser")
	public void saveUser(final HttpServletRequest request) {
	    // TODO this method may be required.
		User user = null;
        userService.saveUser(user);

	}

	@RequestMapping(method = RequestMethod.POST, value = "/login")
    public String login(final HttpServletRequest request) {
	    // TODO this method needs to be changed. Get user grom Google Oauth and set it in session.
	    User user = null;
	    String username = request.getParameter("name");
	    String email = request.getParameter("email");
	    System.out.println(request.getParameter("name"));
	    System.out.println(request.getParameter("email"));
	    user = userService.getOrCreateUser(email, username);
	    request.getSession(true).setAttribute("user", user);
	    return "logged-in";
    }
	
	@RequestMapping(method = RequestMethod.GET, value = "/logout")
    public ModelAndView logout(final HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("home");
	}
}