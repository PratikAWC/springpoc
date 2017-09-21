/**
 * 
 */
package dao.impl;
import java.util.Iterator;
import java.util.List;
import dao.PurchaseOrder;
import dto.PurchaseRequisition;

/**
 * @author Pratik
 *
 */
public class PurchaseOrderImpl implements PurchaseOrder {

	private List<PurchaseRequisition> list;
	/**
	 * 
	 */
	public PurchaseOrderImpl() {
		//System.out.println("Impl Being Called.");
	}
	
	/**
	 * @param list
	 */
	public PurchaseOrderImpl(List<PurchaseRequisition> list) {
		super();
		this.list = list;
	}
	
	/**
	 * @return the list
	 */
	public List<PurchaseRequisition> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List<PurchaseRequisition> list) {
		this.list = list;
	}

	/* (non-Javadoc)
	 * @see dao.PurchaseOrder#listPR()
	 */
	@Override
	public List<PurchaseRequisition> listPR() {
		return list;
	}
	@Override
	public PurchaseRequisition listPR(String name) {
		PurchaseRequisition pr=null;
		Iterator<PurchaseRequisition> itr=list.iterator();
		while(itr.hasNext()) {
			PurchaseRequisition local=itr.next();
			if(local.getName().equals(name)) {
				pr=local;
			}
		}
		return pr;
	}
		/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PurchaseOrderImpl [list=" + list + "]";
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((list == null) ? 0 : list.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PurchaseOrderImpl other = (PurchaseOrderImpl) obj;
		if (list == null) {
			if (other.list != null)
				return false;
		} else if (!list.equals(other.list))
			return false;
		return true;
	}

	
	
}
