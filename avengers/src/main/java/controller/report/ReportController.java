package controller.report;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.report.ReportListService;

@Controller
public class ReportController {
	@Autowired
	ReportListService reportListService;
	
	@RequestMapping("reportPage")
	public String reportPage(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) { // 모든 리포트를 다 가져오기
		reportListService.reportList(page, model);
		return "report/reportListPage";
	}
	@RequestMapping("reportDetailPage") // 신고 상세사유 보기로 클릭해서 들어가면 상세신고사유 포함하여 상세정보 보여줌
	public String reportDetailPage(@RequestParam(value = "reportedNum") String reportedNum, Model model) {
		
		return "report/reportDetailPage";
	}
	
	@RequestMapping("reportFinish") // 직원이 신고 접수 했을 때-> 신고 완료 테이블로 모든 데이터 +1행, member의 누적신고횟수는 +1 시키기, 처리상태 0
	public String reportFinish() {
		return "";
	}
	@RequestMapping("reportCancel") // 직원이 신고 반려했을 때, 신고데이터는 남아있지만 반려상태로 뜸, 처리상태 1
	public String reportCancel() {
		return "";
	}
	
}
