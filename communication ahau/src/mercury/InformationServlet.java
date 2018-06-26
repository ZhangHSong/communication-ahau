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
import domain.HeadPhotoBean;
import domain.HobbyBean;
import domain.InformationBean;
import service.BgPhotoService;
import service.HeadPhotoService;
import service.HobbyService;
import service.InformationService;

@WebServlet("/homepage")
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
		String head_portrait = "";
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

			head_portrait = filename;
		} catch (SmartUploadException e2) {
			e2.printStackTrace();
		}
		HeadPhotoBean hp = new HeadPhotoBean(phonenumber, head_portrait);
		try {
			new HeadPhotoService().register(hp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("head_portrait", head_portrait);

		String nickname = su.getRequest().getParameter("nickname");
		nickname = new String(nickname.getBytes("GBK"), "utf-8");

		String gender = su.getRequest().getParameter("gender");
		gender = new String(gender.getBytes("GBK"), "utf-8");

		String year = su.getRequest().getParameter("year");
		year = new String(year.getBytes("GBK"), "utf-8");

		String mouth = su.getRequest().getParameter("mouth");
		mouth = new String(mouth.getBytes("GBK"), "utf-8");

		String day = su.getRequest().getParameter("day");
		day = new String(day.getBytes("GBK"), "utf-8");

		String province = su.getRequest().getParameter("province");
		province = new String(province.getBytes("GBK"), "utf-8");

		String major = su.getRequest().getParameter("major");
		major = new String(major.getBytes("GBK"), "utf-8");

		String sign = su.getRequest().getParameter("sign");
		sign = new String(sign.getBytes("GBK"), "utf-8");

		String wechat = su.getRequest().getParameter("wechat");
		wechat = new String(wechat.getBytes("GBK"), "utf-8");

		String birthday = year + "-" + mouth + "-" + day;
		birthday = new String(birthday.getBytes("GBK"), "utf-8");

		int age = 2018 - Integer.parseInt(year);

		String location = province;
		location = new String(location.getBytes("GBK"), "utf-8");

		String constellation = su.getRequest().getParameter("constellation");
		constellation = new String(constellation.getBytes("GBK"), "utf-8");

		String bloodtype = su.getRequest().getParameter("bloodtype");
		bloodtype = new String(bloodtype.getBytes("GBK"), "utf-8");

		String music = su.getRequest().getParameter("music");
		music = new String(music.getBytes("GBK"), "utf-8");

		String idol = su.getRequest().getParameter("idol");
		idol = new String(idol.getBytes("GBK"), "utf-8");

		String exercise = su.getRequest().getParameter("exercise");
		exercise = new String(exercise.getBytes("GBK"), "utf-8");

		HobbyBean hobby = new HobbyBean(phonenumber, constellation, bloodtype, exercise, idol, music);
		InformationBean infor = new InformationBean(phonenumber, nickname, gender, birthday, age, major, wechat,
				location, sign);
		BgPhotoBean bpg=new BgPhotoBean(phonenumber,"bg1.jpg");
		try {
			new InformationService().register(infor);
			new HobbyService().register(hobby);
			new BgPhotoService().register(bpg);
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
		session.setAttribute("bgphoto", "bg1.jpg");
		request.getRequestDispatcher("/homepage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
