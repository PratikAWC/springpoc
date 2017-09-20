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

import dao.VendorsDAO;


/**
 * @author Pratik
 *
 */
@Controller
public class VendorsController {
	@Autowired
	private VendorsDAO dao;
	/**
	 * 
	 */
	public VendorsController() {
		// TODO Auto-generated constructor stub
	}
	@RequestMapping(method=RequestMethod.GET)
	public String getVendors(@RequestParam String type,ModelMap map) {
		map.put("category", dao.vendorsDeptWise(type));
		//System.out.println(dao.vendorsDeptWise(type));
		return "vendors";
	}
}
