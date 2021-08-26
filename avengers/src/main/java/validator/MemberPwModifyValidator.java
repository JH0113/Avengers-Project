package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberPwModifyValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {

		MemberCommand memberCommand = (MemberCommand) target;
		// 비밀번호 정규식 (숫자, 문자, 특수문자 포함 8~15자리 이내)
		String regExp_symbol = "^.*(?=^.{8,15}$)(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$";
		// 정규표현식 컴파일
		Pattern pattern_symbol = Pattern.compile(regExp_symbol);
		//비밀번호 유효성
		if (memberCommand.getMemPw().isEmpty() == false && memberCommand.getMemPwCon().isEmpty() == false) {
			if (memberCommand.PwCk() == false) {
				errors.rejectValue("memPwCon", "nomatchPwCon");
			} else {
				// 문자 매칭
				Matcher matcher_symbol = pattern_symbol.matcher(memberCommand.getMemPw());
				System.out.println("비번 문자매칭한거 맞나");
				if (!matcher_symbol.find()) {
					errors.rejectValue("memPw", "pwnonok");
				}
			}
		}
		//빈칸 유효성
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
	}

}
