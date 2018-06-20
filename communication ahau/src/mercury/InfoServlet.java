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

import domain.BgPhotoBean;
import service.BgPhotoService;

@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession(false);
		String phonenumber = (String) session.getAttribute("phonenumber");
		String bgphoto = "";
		SmartUpload su = new SmartUpload();
		try {
			su.initialize(getServletConfig(), request, response);
			su.setAllowedFilesList("jpg,png");
			su.setTotalMaxFileSize(1024 * 1024 * 20);
			su.upload();
			// ��ȡ�����ļ�
			com.jspsmart.upload.File file = su.getFiles().getFile(0);

			// �����ϴ���������λ��
			String path = "F:\\";

			// �õ��ϴ��ļ�������
			String filename = file.getFileName();

			// �ϴ��ļ���·��
			path = path + filename;

			// �����ļ�
			file.saveAs(path);

			bgphoto = filename;
		} catch (SmartUploadException e2) {
			e2.printStackTrace();
		}
		BgPhotoBean bp = new BgPhotoBean(phonenumber, bgphoto);
		try {
			new BgPhotoService().register(bp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("bgphoto", bgphoto);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
