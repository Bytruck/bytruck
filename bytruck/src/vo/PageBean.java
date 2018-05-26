package vo;

import java.util.List;

public class PageBean<T> {
	private int currentPage;
	private int totalPage;
	private List<T> list;
	private int startPage;
	private int endPage;
	
	public PageBean(int currentPage, int totalPage, List<T> list, int startPage, int endPage) {
		super();
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.list = list;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public PageBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
}
