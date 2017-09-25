/**
 * 
 */
package dao.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import dao.PurchaseOrder;
import dao.VendorsDAO;
import dto.PurchaseRequisition;
import dto.Vendors;

/**
 * @author Pratik
 *
 */
public class VendorsDaoImpl implements VendorsDAO {
	private Map<Vendors,String> map;
	private static LinkedHashSet<PurchaseRequisition> lhs;
		
	static {
		lhs=new LinkedHashSet<PurchaseRequisition>();
	}
	/**
	 * 
	 */
	public VendorsDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param map
	 */
	public VendorsDaoImpl(Map<Vendors, String> map) {
		super();
		this.map = map;
	}

	/**
	 * @return the map
	 */
	public Map<Vendors, String> getMap() {
		return map;
	}

	/**
	 * @param map the map to set
	 */
	public void setMap(Map<Vendors, String> map) {
		this.map = map;
	}

	/* (non-Javadoc)
	 * @see dao.VendorsDAO#listAllVendors()
	 */
	@Override
	public Set<Vendors> listAllVendors() {
		// TODO Auto-generated method stub
		return map.keySet();
	}

	/* (non-Javadoc)
	 * @see dao.VendorsDAO#vendorsDeptWise()
	 */
	@Override
	public List<Vendors> vendorsDeptWise(String department,String name) {
		List<Vendors> list=new ArrayList<Vendors>();
		Set<Entry<Vendors,String>> set=map.entrySet();
		Iterator<Entry<Vendors,String>> itr=set.iterator();
		while(itr.hasNext()) {
			Map.Entry<Vendors, String> entry=itr.next();
			if(entry.getValue().equals(department)) {
				Vendors v=entry.getKey();
				
				Set<PurchaseRequisition> prset=v.getPr();
				int flag=0;
				Iterator<PurchaseRequisition> psitr=prset.iterator();
				
				while(psitr.hasNext()) {
					PurchaseRequisition pr=psitr.next();
					if(pr.getName().equals(name)) {
						flag++;
					}
				}
				if(flag==0) {
					list.add(v);
				}
			}
		}
		return list;
	}

	@Override
	public boolean addPR(String[] pan,PurchaseRequisition pr) {
		Set<Entry<Vendors,String>> set=map.entrySet();
		
		Iterator itr=set.iterator();
		while(itr.hasNext()) {
			Map.Entry<Vendors, String> entry=(Entry<Vendors, String>)itr.next();
			Vendors vendor=entry.getKey();
			for(String data:pan) {
				if(vendor.getPan().equals(data)) {
					lhs.add(pr);
					vendor.setPr(lhs);
				}
			}
		}
		return false;
	}

	@Override
	public Vendors getVendor(String pan) {
		Vendors local=null;
		Set<Entry<Vendors,String>> set=map.entrySet();
		Iterator<Entry<Vendors,String>> itr=set.iterator();
		while(itr.hasNext()) {
			Map.Entry<Vendors, String> entry=itr.next();
			Vendors vendor=entry.getKey();
			if(vendor.getPan().equals(pan)) {
				local=vendor;
			}
		}
		return local;
	}
	
}
