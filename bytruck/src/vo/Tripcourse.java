package vo;

public class Tripcourse {
	private String title;
	private String detail;
	private String with;
	private String open;
	private String region;
	private String date;	
	
	public Tripcourse() {
		super();
		// TODO Auto-generated constructor stub
	} 
	
	public Tripcourse(String title, String detail, String with, String open, String region, String date) {
		super();
		this.title = title;
		this.detail = detail;
		this.with = with;
		this.open = open;
		this.region = region;
		this.date = date;
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

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Tripcourse [title=" + title + ", detail=" + detail + ", with=" + with + ", open=" + open + ", region="
				+ region + ", date=" + date + "]";
	}
		
}
