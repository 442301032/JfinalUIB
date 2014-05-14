package little.ant.pingtai.validator;

import org.apache.log4j.Logger;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class MenuValidator extends Validator {

	@SuppressWarnings("unused")
	private static Logger log = Logger.getLogger(MenuValidator.class);
	
	protected void validate(Controller controller) {
		
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(MenuValidator.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/menu/save")){
			
		} else if (actionKey.equals("/menu/update")){
			
		}
			
	}
}
