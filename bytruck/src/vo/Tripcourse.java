package vo;

import java.util.Arrays;

public class Tripcourse {
	private int no;
	private String user;
	private String title;
	private String detail;
	private String with;
	private String open;
	private String date;
	private int good;
	private double[] xlocation;
	private double[] ylocation;
	private double xlocationS;
	private double ylocationS;
	
	public Tripcourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tripcourse(int no, String title, String detail, String with, double[] xlocation, double[] ylocation) {
		super();
		this.no = no;
		this.title = title;
		this.detail = detail;
		this.with = with;
		this.xlocation = xlocation;
		this.ylocation = ylocation;
	}
	
	public Tripcourse(int no, String title, String detail, String with, double xlocationS, double ylocationS) {
		super();
		this.no = no;
		this.title = title;
		this.detail = detail;
		this.with = with;
		this.xlocationS = xlocationS;
		this.ylocationS = ylocationS;
	}

	public Tripcourse(int no, String user, String title, String detail, String with, String open, String date, int good,
			double[] xlocation, double[] ylocation) {
		super();
		this.no = no;
		this.user = user;
		this.title = title;
		this.detail = detail;
		this.with = with;
		this.open = open;
		this.date = date;
		this.good = good;
		this.xlocation = xlocation;
		this.ylocation = ylocation;
	}

	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
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

	public double[] getXlocation() {
		return xlocation;
	}

	public void setXlocation(double[] xlocation) {
		this.xlocation = xlocation;
	}

	public double[] getYlocation() {
		return ylocation;
	}

	public void setYlocation(double[] ylocation) {
		this.ylocation = ylocation;
	}
	
	public double getXlocationS() {
		return xlocationS;
	}

	public void setXlocationS(double xlocationS) {
		this.xlocationS = xlocationS;
	}

	public double getYlocationS() {
		return ylocationS;
	}

	public void setYlocationS(double ylocationS) {
		this.ylocationS = ylocationS;
	}

	@Override
	public String toString() {
		return "Tripcourse [no=" + no + ", user=" + user + ", title=" + title + ", detail=" + detail + ", with=" + with
				+ ", open=" + open + ", date=" + date + ", good=" + good + ", xlocation=" + Arrays.toString(xlocation)
				+ ", ylocation=" + Arrays.toString(ylocation) + ", xlocationS=" + xlocationS + ", ylocationS="
				+ ylocationS + "]";
	}
	
}
