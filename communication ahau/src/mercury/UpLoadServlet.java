package mercury;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import domain.HeadPhotoBean;
import service.HeadPhotoService;

@WebServlet("/UpLoadServlet")
public class UpLoadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpLoadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession(false);
		String phonenumber = (String) session.getAttribute("phonenumber");
		String head_portrait = "";
		// 上传头像
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			File f = new File("G:\\test");
			if (!f.exists()) {
				f.mkdirs();
			}
			factory.setRepository(f);
			ServletFileUpload fileupload = new ServletFileUpload(factory);
			fileupload.setHeaderEncoding("utf-8");
			@SuppressWarnings("unchecked")
			List<FileItem> fileitems = fileupload.parseRequest(request);
			for (FileItem fileitem : fileitems) {
				if (fileitem.isFormField()) {
					// do nothing
				} else {
					String filename = fileitem.getName();
					if (filename != null && !filename.equals("")) {
						System.out.println("上传：" + filename);
						filename = filename.substring(filename.lastIndexOf("\\") + 1);
						filename = UUID.randomUUID().toString() + "_" + filename;
						String webPath = "/upload";
						String filepath = getServletContext().getRealPath(webPath + filename);
						File file = new File(filepath);
						file.getParentFile().mkdirs();
						file.createNewFile();
						InputStream in = fileitem.getInputStream();
						FileOutputStream out = new FileOutputStream(file);
						byte[] buffer = new byte[1024];
						int len;
						while ((len = in.read(buffer)) > 0)
							out.write(buffer, 0, len);
						in.close();
						out.close();
						fileitem.delete();
						System.out.println();
						head_portrait = filepath;
						System.out.println("success:"+head_portrait);
					}
				}
			}

		} catch (FileUploadException e1) {

		}
		
		HeadPhotoBean hp = new HeadPhotoBean(phonenumber, head_portrait);
		try {
			new HeadPhotoService().register(hp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("head_portrait", head_portrait);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
