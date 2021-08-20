package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.NoticeCommand;

public class NoticeValidator implements Validator {
 
	public boolean supports(Class<?> clazz) {
		return false;
	}
 
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "noticeSub", "required");
		ValidationUtils.rejectIfEmpty(errors, "noticeContents", "required");
	}
}
