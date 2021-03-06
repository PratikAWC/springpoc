/**
 * 
 */
package controllers;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
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
import dto.PurchaseRequisition;
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
		*/
		System.out.println("Vendors according to Dept :"+dao.vendorsDeptWise(type,name));
		map.put("category", dao.vendorsDeptWise(type,name));
		return "prVendorsList";
	}
	
	@RequestMapping(value="sendNotification",method=RequestMethod.POST)
	public String sendNotification(@RequestParam String type,@RequestParam String name,@RequestParam String[] pan,ModelMap map) {
		dao.addPR(pan, po.listPR(name));
		System.out.println("==================================");
		System.out.println("Notification Sent :"+dao.vendorsDeptWise(type, name));
		System.out.println("==================================");
		map.put("name",name);
		map.put("type", type);
		//map.put("category", dao.addPR(pan, po.listPR(name)));
		return "redirect:vendors";
	}
	@RequestMapping(value="vendorPr",method=RequestMethod.GET)
	public String vendorPr(@RequestParam String pan,ModelMap map) {
		map.put("vendor", dao.getVendor(pan));
		Vendors v1=dao.getVendor(pan);
		System.out.println("=============================================");
		System.out.println(v1.getName());
		System.out.println(v1.getPan());
		System.out.println(v1.getType());
		System.out.println(v1.getRegisteredaddress());
		System.out.println(v1.getPr());
		System.out.println("=============================================");
		Set<PurchaseRequisition> setx=new LinkedHashSet<PurchaseRequisition>();
		Iterator<PurchaseRequisition> itr=dao.getVendor(pan).getPr().iterator();
		while(itr.hasNext()) {
			PurchaseRequisition pr=itr.next();
			if(pr.getVendorPrice()==null) {
				setx.add(pr);
			}
		}
		map.put("openNotification", setx);
		return "vendorPRList";
	}
	@RequestMapping(value="acknowledge",method=RequestMethod.POST)
	public String acknowledge(@RequestParam String[] prname,@RequestParam String[] ack,@RequestParam String vendor,@RequestParam String[] amount,ModelMap map) {
			Vendors v1=dao.getVendor(vendor);
			for(int i=0;i<prname.length;i++) {
				//System.out.println("SEE PR :"+po.listPR(prname[i]));
				Map<Vendors, Float> mapx=new LinkedHashMap<Vendors,Float>();
				mapx.put(v1, Float.parseFloat(amount[i]));
				po.listPR(prname[i]).setVendorPrice(mapx);
				po.listPR(prname[i]);
			}
			map.put("pan", v1.getPan());
			return "redirect:vendorPr";
	}
	@RequestMapping(value="prNotifications", method=RequestMethod.GET)
	public String prNotifications(@RequestParam String name,ModelMap map) {
		//map.put("name", name);
		map.put("pr", po.listPR(name));
		return "prNotifications";
	}
}
