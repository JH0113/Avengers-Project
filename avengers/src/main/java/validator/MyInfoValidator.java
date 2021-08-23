package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class MyInfoValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmpty(errors, "memNick", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPostNumber", "required");
		ValidationUtils.rejectIfEmpty(errors, "memAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "memDetailAdd", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPhone", "required");
	}
	
}
