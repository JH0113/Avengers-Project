package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberCommand memberCommand = (MemberCommand)target;
		if (memberCommand.getMemPw() != null && memberCommand.getMemPwCon() != null) {
			if (!memberCommand.PwCk()) {
				System.out.println("하이");
				errors.rejectValue("memPwCon", "nomatchPwCon");
			}
		}
		ValidationUtils.rejectIfEmpty(errors, "memId", "required");
		ValidationUtils.rejectIfEmpty(errors, "memNick", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "memName", "required");
		ValidationUtils.rejectIfEmpty(errors, "memAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPostNumber", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPhone", "required");
	}
}
