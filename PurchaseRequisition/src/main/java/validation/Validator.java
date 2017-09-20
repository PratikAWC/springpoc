/**
 * 
 */
package validation;

import org.springframework.stereotype.Component;

/**
 * @author Pratik
 *
 */
@Component
public class Validator {
	
	/**
	 * 
	 */
	public Validator() {
		// TODO Auto-generated constructor stub
	}
	public boolean validate(String name,String password) {
		return name.equals(password);
	}
}
