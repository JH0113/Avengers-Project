package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.OneOnOneCommand;

public class OneOnOneValidator implements Validator {
 
	public boolean supports(Class<?> clazz) {
		return false;
	}
 
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "oneononeSub", "required");
		ValidationUtils.rejectIfEmpty(errors, "oneononeContents", "required");
		ValidationUtils.rejectIfEmpty(errors, "oneononeName", "required");
		ValidationUtils.rejectIfEmpty(errors, "oneononePhnumber", "required");
	}
}
