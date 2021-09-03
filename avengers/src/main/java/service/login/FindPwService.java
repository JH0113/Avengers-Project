package service.login;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.http.HttpSession;

import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import authinfo.AuthinfoDTO;
import command.MemberCommand;
import model.MemberDTO;
import model.SmsDTO;
import repository.LoginRepository;
import repository.MemberRepository;

public class FindPwService {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	LoginRepository loginRepository;
	public void findPwCheck(MemberDTO memberDTO , HttpSession httpSession, Errors errors) {
		
		String memId = memberDTO.getMemId();
		AuthinfoDTO dto = loginRepository.findPwCheck(memId);
		if (dto == null) {
			errors.rejectValue("memId", "noneId");
		}else {
			if(memberDTO.getMemName().equals(dto.getUserName())) {
				memberDTO.setMemId(dto.getUserId());
				memberDTO.setMemName(dto.getUserName());
				httpSession.setAttribute("memberDTO", dto);
			} else {
				errors.rejectValue("memId", "memnomatch");
			}
		}
	}
	
	
	// 비밀번호 변경 메소드
	public void memberPwModify(HttpSession session, MemberCommand memberCommand, Errors errors) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("memberDTO");
		String memId = authinfo.getUserId(); 
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemPw(bcryptPasswordEncoder.encode(memberCommand.getMemPw()));
		memberDTO.setMemId(memId);
		loginRepository.memberPwModify(memberDTO);
		
		
	}
	
	/////////////////////////////////////////////////////
	 
	 
	 public String sendSms(MemberDTO memberDTO, HttpSession session, Errors errors) {
		 
		 	// sender
		 	String sender = "01089972194";

	        // 6자리 인증 코드 생성
	        int rand = (int) (Math.random() * 899999) + 100000;

	        // 인증 코드를 데이터베이스에 저장하는 코드
	        String memPhone = memberDTO.getMemPhone();
	        if(memPhone.contains("-")) {
				String[] phone = memPhone.split("-");
				memPhone = phone[0]+phone[1]+phone[2];
			}
	        String smsNum = String.valueOf(rand);
	        SmsDTO smsDTO = new SmsDTO();
	        smsDTO.setSmsNum(smsNum);
	        smsDTO.setMemPhone(memPhone);
	        loginRepository.sendSms(smsDTO);
	        session.setAttribute("dto", smsDTO);

	        // 문자 보내기 
	        String hostname = "api.bluehouselab.com";
	        String url = "https://" + hostname + "/smscenter/v1.0/sendsms";

	        CredentialsProvider credsProvider = new BasicCredentialsProvider();
	        credsProvider.setCredentials(new AuthScope(hostname, 443, AuthScope.ANY_REALM),

	        // 청기와랩에 등록한 Application Id 와 API key 를 입력
	        new UsernamePasswordCredentials("smsService", "e1073c6c056211ec9d6d0cc47a1fcfae"));

	        AuthCache authCache = new BasicAuthCache();
	        authCache.put(new HttpHost(hostname, 443, "https"), new BasicScheme());

	        HttpClientContext context = HttpClientContext.create();
	        context.setCredentialsProvider(credsProvider);
	        context.setAuthCache(authCache);

	        DefaultHttpClient client = new DefaultHttpClient();

	        try {
	            HttpPost httpPost = new HttpPost(url);
	            httpPost.setHeader("Content-type", "application/json; charset=utf-8");

	            //문자에 대한 정보
	            String json = "{\"sender\":\""+sender+"\",\"receivers\":[\""+memPhone+"\"],\"content\":\""+rand+"\"}";


	            StringEntity se = new StringEntity(json, "UTF-8");
	            httpPost.setEntity(se);

	            HttpResponse httpResponse = client.execute(httpPost, context);

	            InputStream inputStream = httpResponse.getEntity().getContent();
	            if (inputStream != null) {
	                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
	                String line = "";
	                while ((line = bufferedReader.readLine()) != null)
	                    inputStream.close();
	            }
	        } catch (Exception e) {
	            System.err.println("Error: " + e.getLocalizedMessage());
	        } finally {
	            client.getConnectionManager().shutdown();
	        }
	        return "true";

	}

}
