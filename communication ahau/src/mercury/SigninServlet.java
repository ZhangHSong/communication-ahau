package mercury;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.AllBean;
import domain.UserBean;
import service.AllService;
import service.UserService;

@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SigninServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置中文编码方式
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 获取浏览器发过来的登录参数
		String phonenumber = request.getParameter("phonenumber");
		String password = request.getParameter("password");
		UserBean user = null;
		try {
			user = new UserService().login(phonenumber, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (user == null) {
			System.out.println("error");
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
			try {
				AllBean	all = new AllService().serach(phonenumber);
				System.out.println(phonenumber);
				System.out.println("all"+all);
				HttpSession session = request.getSession(true);
				session.setMaxInactiveInterval(30);
				session.setAttribute("phonenumber", phonenumber);
				session.setAttribute("nickname", all.getNickname());
				session.setAttribute("gender", all.getGender());
				session.setAttribute("birthday", all.getBirthday());
				session.setAttribute("age", all.getAge());
				session.setAttribute("head_portrait", all.getHead_portrait());
				session.setAttribute("major", all.getMajor());
				session.setAttribute("wechat", all.getWechat());
				session.setAttribute("location", all.getLocation());
				session.setAttribute("sign", all.getSign());
				session.setAttribute("constellation", all.getConstellation());
				session.setAttribute("bloodtype", all.getBloodtype());
				session.setAttribute("exercise", all.getExercise());
				session.setAttribute("idol", all.getIdol());
				session.setAttribute("music", all.getMusic());
				session.setAttribute("bgphoto", all.getBgphoto());
				response.sendRedirect(request.getContextPath() + "/homepage.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
