package beans;

public class BookDTO {
	int num;
	String name;
	String publisher;
	String writer;
	boolean lendState;
	
	
	public BookDTO(int num, String name, String publisher, String writer, boolean lendState) {
		super();
		this.num = num;
		this.name = name;
		this.publisher = publisher;
		this.writer = writer;
		this.lendState = lendState;
	}
	public BookDTO() {}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public boolean isLendState() {
		return lendState;
	}
	public void setLendState(boolean lendState) {
		this.lendState = lendState;
	}
}
