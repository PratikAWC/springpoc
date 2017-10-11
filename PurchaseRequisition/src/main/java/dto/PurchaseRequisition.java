/**
 * 
 */
package dto;

import java.util.Map;

/**
 * @author Pratik
 *
 */
public class PurchaseRequisition {

	private String type,name,category,description,amount;
	private Map<Vendors,Float> vendorPrice;
	
	/**
	 * 
	 */
	public PurchaseRequisition() {
		//System.out.println(toString());
	}
	
	/**
	 * @param type
	 * @param name
	 * @param category
	 * @param description
	 * @param amount
	 * @param vendorPrice
	 */
	public PurchaseRequisition(String type, String name, String category, String description, String amount,
			Map<Vendors, Float> vendorPrice) {
		super();
		this.type = type;
		this.name = name;
		this.category = category;
		this.description = description;
		this.amount = amount;
		this.vendorPrice = vendorPrice;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the amount
	 */
	public String getAmount() {
		return amount;
	}
	/**
	 * @param amount the amount to set
	 */
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	/**
	 * @return the vendorPrice
	 */
	public Map<Vendors, Float> getVendorPrice() {
		return vendorPrice;
	}

	/**
	 * @param vendorPrice the vendorPrice to set
	 */
	public void setVendorPrice(Map<Vendors, Float> vendorPrice) {
		/*Set<Entry<Vendors,Float>> setx=vendorPrice.entrySet();
		Iterator<Entry<Vendors,Float>> itrx=setx.iterator();
		while(itrx.hasNext()) {
			Map.Entry<Vendors, Float> entry=(Map.Entry<Vendors, Float>)itrx.next();
			System.out.println("Entry ki key :"+entry.getKey());
			System.out.println("Entry ki Value :"+entry.getValue());
			System.out.println("Map's Check :"+this.vendorPrice);
			this.vendorPrice.put(entry.getKey(), entry.getValue());
		}*/
		this.vendorPrice=vendorPrice;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PurchaseRequisition [type=" + type + ", name=" + name + ", category=" + category + ", description="
				+ description + ", amount=" + amount + ", vendorPrice=" + vendorPrice + "]";
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((amount == null) ? 0 : amount.hashCode());
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + ((vendorPrice == null) ? 0 : vendorPrice.hashCode());
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
		PurchaseRequisition other = (PurchaseRequisition) obj;
		if (amount == null) {
			if (other.amount != null)
				return false;
		} else if (!amount.equals(other.amount))
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		if (vendorPrice == null) {
			if (other.vendorPrice != null)
				return false;
		} else if (!vendorPrice.equals(other.vendorPrice))
			return false;
		return true;
	}
}
