package test.dto;

public class PlanDto {
	private int num_pk;
	private String title;
	private String writer;
	private String content;
	private String planperson;
	private String letterdate;
	
	public PlanDto(){}

	public PlanDto(int num_pk, String title, String writer, String content, String planperson, String letterdate) {
		super();
		this.num_pk = num_pk; 
		this.title = title; 
		this.writer = writer; 
		this.content = content; 
		this.planperson = planperson;
		this.letterdate = letterdate;
	}

	public int getNum_pk(){
		return num_pk;
	}
	
	public void setNum_pk(int num_pk){
		this.num_pk = num_pk;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPlanperson() {
		return planperson;
	}

	public void setPlanperson(String planperson) {
		this.planperson = planperson;
	}

	public String getLetterdate() {
		return letterdate;
	}

	public void setLetterdate(String letterdate) {
		this.letterdate = letterdate;
	}
	
	
}




