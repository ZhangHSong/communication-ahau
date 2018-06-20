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
			// 获取单个文件
			com.jspsmart.upload.File file = su.getFiles().getFile(0);

			// 设置上传服务器的位置
			String path = "F:\\";

			// 得到上传文件的名称
			String filename = file.getFileName();

			// 上传文件的路径
			path = path + filename;

			// 保存文件
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
