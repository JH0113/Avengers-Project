package controller.report;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {
	@RequestMapping("reportPage")
	public String reportPage() { // 모든 리포트를 다 가져오기
		return "report/reportListPage";
	}
}
