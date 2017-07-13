package test.dto;

public class UsersDto {
	private String name;
	private String id;
	private String pwd;
	private String email;
	private String telephone;
	private String addr;
	private String favorite_kind;
	private String favorite_area;
	private String signup_date;
	//디폴트 생성자 
	public UsersDto(){}
	public UsersDto(String name, String id, String pwd, String email, String telephone, String addr,
			String favorite_kind, String favorite_area, String signup_date) {
		super();
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.telephone = telephone;
		this.addr = addr;
		this.favorite_kind = favorite_kind;
		this.favorite_area = favorite_area;
		this.signup_date = signup_date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getFavorite_kind() {
		return favorite_kind;
	}
	public void setFavorite_kind(String favorite_kind) {
		this.favorite_kind = favorite_kind;
	}
	public String getFavorite_area() {
		return favorite_area;
	}
	public void setFavorite_area(String favorite_area) {
		this.favorite_area = favorite_area;
	}
	public String getSignup_date() {
		return signup_date;
	}
	public void setSignup_date(String signup_date) {
		this.signup_date = signup_date;
	}

	
}
