/**
 * 
 */
package dao;
import java.util.List;
import java.util.Set;

import dto.PurchaseRequisition;
import dto.Vendors;

/**
 * @author Pratik
 *
 */
public interface VendorsDAO {
	public Set<Vendors> listAllVendors();
	public List<Vendors> vendorsDeptWise(String department,String name);
	public boolean addPR(String[] pan,PurchaseRequisition po);
}
