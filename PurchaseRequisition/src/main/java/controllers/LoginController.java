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
import dao.VendorsDAO;
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
	@Autowired
	VendorsDAO dao;
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
		else if(password.equals("vendor") && (dao.getVendor(userid)!=null)) {
			System.out.println("Vendor :"+dao.getVendor(userid));
			map.put("user", dao.getVendor(userid));
			return "vendorHome";
		}
		else {
			map.put("error", "Invalid Credentials");
			return "login";
		}
	}
	
	/*@RequestMapping(value="vendorLogin",method=RequestMethod.POST)
	public String vendorlogin(@RequestParam String vendorid,@RequestParam String password,ModelMap map) {
		if(password.equals("vendor") && (dao.getVendor(vendorid)!=null)) {
			System.out.println("Vendor :"+dao.getVendor(vendorid));
			map.put("user", dao.getVendor(vendorid));
			return "vendorHome";
		}
		else {
			map.put("error", "Invalid Credentials");
			return "vendorLogin";
		}
	}*/
	
}
