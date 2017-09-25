/**
 * 
 */
package controllers;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.PurchaseOrder;
import dao.VendorsDAO;
import dao.impl.PurchaseOrderImpl;
import dto.Vendors;


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
	private static HashMap<Vendors, Float> lhm;
	/**
	 * 
	 */
	public VendorsController() {
		// TODO Auto-generated constructor stub
	}
	static {
		lhm=new LinkedHashMap<>();
	}
	@RequestMapping(value="vendors", method=RequestMethod.GET)
	public String getVendors(@RequestParam String type,@RequestParam String name,ModelMap map) {
		map.put("name", name);
		map.put("type", type);
		/*System.out.println("**********************************");
		System.out.println("Filtered Data"+dao.vendorsDeptWise(type, name));
		System.out.println("Raw Data :"+dao.listAllVendors());
		System.out.println("**********************************");
		*/map.put("category", dao.vendorsDeptWise(type,name));
		return "prVendorsList";
	}
	@RequestMapping(value="sendNotification",method=RequestMethod.POST)
	public String sendNotification(@RequestParam String type,@RequestParam String name,@RequestParam String[] pan,ModelMap map) {
		dao.addPR(pan, po.listPR(name));
		/*System.out.println("==================================");
		System.out.println(dao.vendorsDeptWise(type, name));
		System.out.println("==================================");
		*/map.put("name",name);
		map.put("type", type);
		//map.put("category", dao.addPR(pan, po.listPR(name)));
		return "redirect:vendors";
	}
	@RequestMapping(value="vendorPr",method=RequestMethod.GET)
	public String vendorPr(@RequestParam String pan,ModelMap map) {
		map.put("vendor", dao.getVendor(pan));
		map.put("openNotification", dao.getVendor(pan).getPr());
		return "vendorPRList";
	}
	@RequestMapping(value="acknowledge",method=RequestMethod.POST)
	public void acknowledge(@RequestParam String prname,@RequestParam String ack) {
		System.out.println("PR Name: "+prname);
		System.out.println("ack :"+ack);
	}
}
