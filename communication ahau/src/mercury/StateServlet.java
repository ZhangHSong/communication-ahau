package mercury;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import domain.DynamicStateBean;
import service.DynamicStateService;

@WebServlet("/StateServlet")
public class StateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession(false);
		String phonenumber = (String) session.getAttribute("phonenumber");
		System.out.println("StateServlet");
		System.out.println(session);System.out.println(phonenumber);
		String photo = "";
		SmartUpload su1 = new SmartUpload();
		try {
			su1.initialize(getServletConfig(), request, response);
			su1.setAllowedFilesList("jpg,png");
			su1.setTotalMaxFileSize(1024 * 1024 * 20);
			su1.upload();
			// ��ȡ�����ļ�
			com.jspsmart.upload.File file1 = su1.getFiles().getFile(0);

			// �����ϴ���������λ��
			String path = "G:\\";

			// �õ��ϴ��ļ�������
			String filename = file1.getFileName();

			// �ϴ��ļ���·��
			path = path + filename;

			// �����ļ�
			file1.saveAs(path);

			photo = filename;
		} catch (SmartUploadException e2) {
			e2.printStackTrace();
		}
		String number="";
		String character = su1.getRequest().getParameter("character");
		character = new String(character.getBytes("GBK"), "utf-8");
		DynamicStateBean ds = new DynamicStateBean(phonenumber, character, photo);
		try {
			new DynamicStateService().register(ds);
			number=new DynamicStateService().find(phonenumber);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("statenumber", number);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
