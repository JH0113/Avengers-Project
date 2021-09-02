package controller.chat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChatPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChatPageController.class);

	@RequestMapping(value = "chat", method = RequestMethod.GET)
	public String home() {
		return "chat/chat";
	}
}
