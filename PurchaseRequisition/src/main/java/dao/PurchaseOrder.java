/**
 * 
 */
package dao;

import java.util.List;

import dto.PurchaseRequisition;

/**
 * @author Pratik
 *
 */
public interface PurchaseOrder {
	public List<PurchaseRequisition> listPR();
	public PurchaseRequisition listPR(String name);
}
