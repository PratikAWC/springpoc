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
	private LinkedHashSet<PurchaseRequisition> lhs;
	private List<Vendors> list;	
	/**
	 * 
	 */
	public VendorsDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param map
	 */
	public VendorsDaoImpl(Map<Vendors, String> map,List<Vendors> list,LinkedHashSet<PurchaseRequisition> lhs) {
		super();
		this.map = map;
		this.list=list;
		this.lhs=lhs;
	}
	
	/**
	 * @return the list
	 */
	public List<Vendors> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List<Vendors> list) {
		this.list = list;
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
	
	/**
	 * @return the lhs
	 */
	public LinkedHashSet<PurchaseRequisition> getLhs() {
		return lhs;
	}

	/**
	 * @param lhs the lhs to set
	 */
	public void setLhs(LinkedHashSet<PurchaseRequisition> lhs) {
		this.lhs = lhs;
	}

	/* (non-Javadoc)
	 * @see dao.VendorsDAO#vendorsDeptWise()
	 */
	@Override
	public List<Vendors> vendorsDeptWise(String department,String name) {
		//list=new ArrayList<Vendors>();
		list.clear();
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
		//lhs.clear();
		Set<Entry<Vendors,String>> set=map.entrySet();
		//lhs=new LinkedHashSet<PurchaseRequisition>();
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
