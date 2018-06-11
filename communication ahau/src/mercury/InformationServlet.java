package mercury;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.HobbyBean;
import domain.InformationBean;
import service.HobbyService;
import service.InformationService;

@WebServlet("/InformationServlet")
public class InformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InformationServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession(false);
		String phonenumber = (String) session.getAttribute("phonenumber");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		String year = request.getParameter("year");
		String mouth = request.getParameter("mouth");
		String day = request.getParameter("day");

		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String major = request.getParameter("major");
		String sign = request.getParameter("sign");
		String wechat = request.getParameter("wechat");
		String birthday = year + "-" + mouth + "-" + day;
		System.out.println("dfds" + year);
		int age = 2018 - Integer.parseInt(year);
		String location = province + city;

		String constellation = request.getParameter("constellation");
		String bloodtype = request.getParameter("bloodtype");
		String music = request.getParameter("music");
		String idol = request.getParameter("idol");
		String exercise = request.getParameter("exercise");
		HobbyBean hobby = new HobbyBean(phonenumber, constellation, bloodtype, exercise, idol, music);
		InformationBean infor = new InformationBean(phonenumber, nickname, gender, birthday, age, major, wechat,
				location, sign);

		try {
			new InformationService().register(infor);
			new HobbyService().register(hobby);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("nickname", nickname);
		session.setAttribute("gender", gender);
		session.setAttribute("birthday", birthday);
		session.setAttribute("age", age);
		session.setAttribute("major", major);
		session.setAttribute("wechat", wechat);
		session.setAttribute("location", location);
		session.setAttribute("sign", sign);

		session.setAttribute("constellation", constellation);
		session.setAttribute("bloodtype", bloodtype);
		session.setAttribute("music", music);
		session.setAttribute("idol", idol);
		session.setAttribute("exercise", exercise);

		response.sendRedirect(request.getContextPath() + "/homepage.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
