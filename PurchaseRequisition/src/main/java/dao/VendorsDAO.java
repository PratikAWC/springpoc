/**
 * 
 */
package dao;

import java.util.List;

import dto.Vendors;

/**
 * @author Pratik
 *
 */
public interface VendorsDAO {
	public List<Vendors> listAllVendors();
	public List<Vendors> vendorsDeptWise(String department);
}
