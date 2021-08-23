package service.member;

import org.springframework.beans.factory.annotation.Autowired;

import repository.MemberListRepository;

public class MemberDeleteService {
	@Autowired
	MemberListRepository memberListRepository;
	public void memberDelete(String memId) {
		memberListRepository.memberDelete(memId);
	}
}
