package mercury;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.UserBean;
import service.UserService;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SignupServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String phonenumber = request.getParameter("phonenumber1");
		String password = request.getParameter("password1");
		int result;
		try {
			if (new UserService().serach(phonenumber) == null) { // 用户已注册
				response.sendRedirect(request.getContextPath() + "/index.jsp");
			}
			result = new UserService().register(new UserBean(phonenumber, password));
			if (result == 1) {
				// 请求转发属于同一个请求，因此request对象是同一个。
				// request.setAttribute("result", "注册成功");
				HttpSession session = request.getSession(true);
				session.setMaxInactiveInterval(30);
				session.setAttribute("phonenumber", phonenumber);
				System.out.println(session.getId());
				System.out.println(session.getAttribute("phonenumber"));
				request.getRequestDispatcher("/information.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
