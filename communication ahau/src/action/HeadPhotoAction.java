package action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import domain.HeadPhotoBean;
import net.sf.json.JSONObject;
import service.HeadPhotoService;

public class HeadPhotoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	 private HttpServletRequest request;
	     private String result;
	  
	     public void setServletRequest(HttpServletRequest arg0) {
	         this.request = arg0;
	     }
	     public String getResult() {
	         return result;
	     }
	     public void setResult(String result) {
	         this.result = result;
	     }
	      
	
	@Override
	public String execute() throws Exception {
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
						String filepath = ServletActionContext.getServletContext().getRealPath(webPath + filename);
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
		
		 
        //将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("phonenumber", phonenumber);
        map.put("head_portrait",head_portrait);
         
        JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
        result = json.toString();//给result赋值，传递给页面
		
		return  SUCCESS;
	}
	}


