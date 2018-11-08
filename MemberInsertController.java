import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberInsertController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name =request.getParameter("name");
		String mail = request.getParameter("mail");
		
		if(id.isEmpty()||passwd.isEmpty()||name.isEmpty()||mail.isEmpty()) {
		request.setAttribute("error","모든 항목을 빠짐없이 입력해주시기 바랍니다");
		HttpUtil.forward(request, response, "memberInsert.jsp");
		return;
		
		}
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPasswd(passwd);
		member.setName(name);
		member.setMail(mail);
		
		MemberService service = MemberService.getInstance();
		service.memberInsert(member);
		
		request.setAttribute("id", id);
		HttpUtil.forward(request, response, "/result/memberInsertOutput.jsp");
	}
}
