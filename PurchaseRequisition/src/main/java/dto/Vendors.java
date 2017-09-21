/**
 * 
 */
package dto;

import java.util.Set;

/**
 * @author Pratik
 *
 */
public class Vendors {
	
	private String name,pan,type,registeredaddress;
	private Set<PurchaseRequisition> pr;
	
	/**
	 * 
	 */
	public Vendors() {
		// TODO Auto-generated constructor stub
	}

	public Vendors(String name, String pan, String type, String registeredaddress, Set<PurchaseRequisition> pr) {
		super();
		this.name = name;
		this.pan = pan;
		this.type = type;
		this.registeredaddress = registeredaddress;
		this.pr = pr;
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
	 * @return the pan
	 */
	public String getPan() {
		return pan;
	}

	/**
	 * @param pan the pan to set
	 */
	public void setPan(String pan) {
		this.pan = pan;
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
	 * @return the registeredaddress
	 */
	public String getRegisteredaddress() {
		return registeredaddress;
	}

	/**
	 * @param registeredaddress the registeredaddress to set
	 */
	public void setRegisteredaddress(String registeredaddress) {
		this.registeredaddress = registeredaddress;
	}
	
	
	public Set<PurchaseRequisition> getPr() {
		return pr;
	}

	public void setPr(Set<PurchaseRequisition> pr) {
		this.pr = pr;
	}

	@Override
	public String toString() {
		return "Vendors [name=" + name + ", pan=" + pan + ", type=" + type + ", registeredaddress=" + registeredaddress
				+ ", pr=" + pr + "]";
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((pan == null) ? 0 : pan.hashCode());
		result = prime * result + ((pr == null) ? 0 : pr.hashCode());
		result = prime * result + ((registeredaddress == null) ? 0 : registeredaddress.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
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
		Vendors other = (Vendors) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (pan == null) {
			if (other.pan != null)
				return false;
		} else if (!pan.equals(other.pan))
			return false;
		if (pr == null) {
			if (other.pr != null)
				return false;
		} else if (!pr.equals(other.pr))
			return false;
		if (registeredaddress == null) {
			if (other.registeredaddress != null)
				return false;
		} else if (!registeredaddress.equals(other.registeredaddress))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}
	
}
