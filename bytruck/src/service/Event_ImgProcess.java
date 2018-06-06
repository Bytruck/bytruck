package service;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import vo.Event;

public class Event_ImgProcess {
	private HttpServletRequest request;
	
	public Event_ImgProcess(HttpServletRequest request) {
		this.request = request;
	}
	
	public Event upload() {
		
		Event ev = new Event();
		
		//파일 업로드는 멀티파트 방식 
		if (ServletFileUpload.isMultipartContent(request)) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload fileUpload = new ServletFileUpload(factory);

			List<FileItem> fileItemList = null;
			try {
				fileItemList = fileUpload.parseRequest(request); //전송된 파일과 텍스트를 저장(fileItemList)	
			} catch (FileUploadException e) {
				e.printStackTrace();
				
			}
			for (int i = 0; i < fileItemList.size(); i++) {
				FileItem fileItem = (FileItem) fileItemList.get(i);
				if (fileItem.isFormField()) { //isFormField()는 텍스트인지 판단
					String name = fileItem.getFieldName(); //양식의 이름 뽑아서 저장
					String value = null;
					try {
						value = fileItem.getString("UTF-8");
						} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
					if (name.equals("title")) {
						ev.setTitle(value);
					} else if (name.equals("detail")){
						ev.setDetail(value);
					} else if (name.equals("event_date")){
						ev.setEvent_date(value);
						System.out.println(value);
					} 
					
				} else {
					String name = fileItem.getFieldName();
					int idx = fileItem.getName().lastIndexOf("\\"); //마지막 역슬래시의 위치 (파일명만 짤라오고)
				
					if (idx == -1) { //만약에 파일(마지막 슬래시의 위치를 찾거나 )
						idx = fileItem.getName().lastIndexOf("/");
					}
					String fileName = fileItem.getName().substring(idx + 1); //파일명만 짤라오고
					
					try {
						File uploadedFile = new File("D:\\apache-tomcat-8.5.30\\wtpwebapps\\bytruck\\upload", fileName);
						fileItem.write(uploadedFile);
					
						ev.setImgpath(uploadedFile.getAbsolutePath());
						System.out.println(ev.getImgpath());
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		return ev;
	}
}
