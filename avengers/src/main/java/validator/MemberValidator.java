package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MemberValidator implements Validator {
 
	public boolean supports(Class<?> clazz) {
		return false;
	}
 
	public void validate(Object target, Errors errors) {
		
		MemberCommand memberCommand = (MemberCommand) target;
		// 비밀번호 유효성 검사식 : 숫자, 특수문자가 포함되어야 한다.
		String regExp_symbol = "([0-9].*[!,@,#,^,&,*,(,)])|([!,@,#,^,&,*,(,)].*[0-9])";
		// 정규표현식 컴파일
		Pattern pattern_symbol = Pattern.compile(regExp_symbol);
		
		String id=memberCommand.getMemId();
		String pw=memberCommand.getMemPw();
		String pwcon=memberCommand.getMemPwCon();
		if (pw != null && pwcon != null) {
			if (!memberCommand.PwCk()) {
				errors.rejectValue("memPwCon", "nomatchPwCon");
			}else {
				if(pw.length()<8) {
					errors.rejectValue("memPw", "length");
				}else{
					// 문자 매칭
					Matcher matcher_symbol = pattern_symbol.matcher(pw);
					if(!matcher_symbol.find()) {
						errors.rejectValue("memPw", "pwnonok");	
						}
					}	
			}
		}else {
			ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
			ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		}

		
		if(id!=null) {
			if(id.length()<6&&id.length()>15) {
				errors.rejectValue("memId", "length");
			}else {
				if(id.indexOf(" ")>=0) {
					errors.rejectValue("memId", "trim");
				}
			}
		}
		
		ValidationUtils.rejectIfEmpty(errors, "memId", "required");
		ValidationUtils.rejectIfEmpty(errors, "memNick", "required");
		ValidationUtils.rejectIfEmpty(errors, "memName", "required");
		ValidationUtils.rejectIfEmpty(errors, "memAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPostNumber", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPhone", "required");
	}
}
