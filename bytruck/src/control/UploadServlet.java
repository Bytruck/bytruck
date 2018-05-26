package control;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upload.MyRenamePolicy;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import upload.MyRenamePolicy;

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("파일업로드를 선택하세요.");
		out.print("<a href=\"upload.html\">업로드</a>");
		return;
		
	}

	private String saveDirectory="D:\\javadata\\workspace\\javaee\\bytruck\\WebContent\\upload";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MultipartRequest mr;
		int maxPostSize = 1021*10000;
		String encoding = "UTF-8";
		try {
			mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, new MyRenamePolicy()); //new DefaultFileRenamePolicy()
			String txt1 = mr.getParameter("txt1");
			System.out.println(txt1);
			File file1 = mr.getFile("file1");
						
			System.out.println(file1.getName());
		}catch(IOException e) {
			e.printStackTrace(); //maxPostSize 벗어났을때의 오류
		}
	}

}
