package vo;

public class Tripcourse {
	private String user;
	private String title;
	private String detail;
	private String with;
	private int open;
	private String date;
	private int good;
	
	public Tripcourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tripcourse(String user, String title, String detail, String with, int open, String date, int good) {
		super();
		this.user = user;
		this.title = title;
		this.detail = detail;
		this.with = with;
		this.open = open;
		this.date = date;
		this.good = good;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
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

	public String getWith() {
		return with;
	}

	public void setWith(String with) {
		this.with = with;
	}

	public int getOpen() {
		return open;
	}

	public void setOpen(int open) {
		this.open = open;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	@Override
	public String toString() {
		return "Tripcourse [user=" + user + ", title=" + title + ", detail=" + detail + ", with=" + with + ", open="
				+ open + ", region=" + ", date=" + date + ", good=" + good + "]";
	} 
		
}
