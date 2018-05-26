package vo;

import java.util.Date;

public class board {
	private int no;
	private int type;
	private String title;
	private String detail;
	private Date  posted;
	
	public board() {
		super();
		// TODO Auto-generated constructor stub
	}
	public board(int no, int type, String title, String detail, Date posted) {
		super();
		this.no = no;
		this.type = type;
		this.title = title;
		this.detail = detail;
		this.posted = posted;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getPosted() {
		return posted;
	}
	public void setPosted(Date posted) {
		this.posted = posted;
	}
	@Override
	public String toString() {
		return "board [no=" + no + ", type=" + type + ", title=" + title + ", detail=" + detail + ", posted=" + posted
				+ "]";
	}
	
}
