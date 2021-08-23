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
		// 비밀번호 정규식 (숫자, 문자, 특수문자 포함 8~15자리 이내)
		String regExp_symbol = "^.*(?=^.{8,15}$)(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$";
		// 아이디 정규식 (시작은 영문으로만, '_'를 제외한 특수문자 안되며 영문, 숫자, '_'으로만 이루어진 6 ~ 15자 이하)
		String regId = "^[a-zA-Z]{1}[a-zA-Z0-9_]{5,14}$";
		//휴대폰 검사 정규식
		String regPhone="^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$";
		//이름 정규식
		String regName="^[가-힣]{2,4}$";
		//닉네임 정규식
		String regNick="^[\\w\\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,10}$";
		
		// 정규표현식 컴파일
		Pattern pattern_symbol = Pattern.compile(regExp_symbol);
		Pattern pattern_id = Pattern.compile(regId);
		Pattern pattern_phone = Pattern.compile(regPhone);
		Pattern pattern_name = Pattern.compile(regName);
		Pattern pattern_nick = Pattern.compile(regNick);
		
		//아이디 유효성
		if (memberCommand.getMemId().isEmpty() == false) {
			if (memberCommand.getMemId().indexOf(" ") >= 0) {
				errors.rejectValue("memId", "trim");
			} else {
				Matcher matcher_id = pattern_id.matcher(memberCommand.getMemId());
				if (!matcher_id.find()) {
					errors.rejectValue("memId", "idnonok");
				}
			}
		}
		//비밀번호 유효성
		if (memberCommand.getMemPw().isEmpty() == false && memberCommand.getMemPwCon().isEmpty() == false) {
			if (memberCommand.PwCk() == false) {
				errors.rejectValue("memPwCon", "nomatchPwCon");
			} else {
				// 문자 매칭
				Matcher matcher_symbol = pattern_symbol.matcher(memberCommand.getMemPw());
				if (!matcher_symbol.find()) {
					errors.rejectValue("memPw", "pwnonok");
				}
			}
		}
		//휴대폰번호 유효성
		if(memberCommand.getMemPhone().isEmpty()==false) {
			Matcher matcher_phone=pattern_phone.matcher(memberCommand.getMemPhone());
			if(!matcher_phone.find()) {
				errors.rejectValue("memPhone", "phonenonok");
			}
		}
		//이름 유효성
		if(memberCommand.getMemName().isEmpty()==false) {
			Matcher matcher_name=pattern_name.matcher(memberCommand.getMemName());
			if(!matcher_name.find()) {
				errors.rejectValue("memName", "namenonok");
			}
		}
		//닉네임 유효성
		if(memberCommand.getMemNick().isEmpty()==false) {
			Matcher matcher_nick=pattern_nick.matcher(memberCommand.getMemNick());
			if(!matcher_nick.find()) {
				errors.rejectValue("memNick", "nicknonok");
			}
		}
		
		//빈칸 유효성
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "memId", "required");
		ValidationUtils.rejectIfEmpty(errors, "memNick", "required");
		ValidationUtils.rejectIfEmpty(errors, "memName", "required");
		ValidationUtils.rejectIfEmpty(errors, "memAddr", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPostNumber", "required");
		ValidationUtils.rejectIfEmpty(errors, "memPhone", "required");
	}
}
