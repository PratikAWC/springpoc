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
import dao.impl.PurchaseOrderImpl;


/**
 * @author Pratik
 *
 */
@Controller
public class VendorsController {
	@Autowired
	private VendorsDAO dao;
	@Autowired
	private PurchaseOrder po;
	/**
	 * 
	 */
	public VendorsController() {
		// TODO Auto-generated constructor stub
	}
	@RequestMapping(value="vendors", method=RequestMethod.GET)
	public String getVendors(@RequestParam String type,@RequestParam String name,ModelMap map) {
		map.put("name", name);
		map.put("category", dao.vendorsDeptWise(type,name));
		return "vendors";
	}
	@RequestMapping(value="sendNotification",method=RequestMethod.POST)
	public String sendNotification(@RequestParam String name,@RequestParam String[] pan) {
		System.out.println("Hey There !!");
		//dao.addPR(pan, po.listPR(name));
		return "redirect:vendors";
	}
}
