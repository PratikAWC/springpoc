/**
 * 
 */
package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import dao.PurchaseOrder;
import validation.Validator;

/**
 * @author Pratik
 *
 */
@Controller
public class LoginController {
	
	@Autowired
	private Validator service;
	@Autowired
	private PurchaseOrder po;
	
	/**
	 * 
	 */
	public LoginController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(@RequestParam String userid,@RequestParam String password,ModelMap map) {
		if(service.validate(userid, password)) {
			map.put("user", userid);
			map.put("pr", po.listPR());
			return "success";
		}
		else {
			map.put("error", "Invalid Credentials");
			return "login";
		}
	}
}
