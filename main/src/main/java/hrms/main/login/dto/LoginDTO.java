package hrms.main.login.dto;

public class LoginDTO {
	private Integer userId;
	
	private String userRoleId;
	
	private String userName;
	
	private String passWord;
	
	private String statusId;
	
	private String employeeNo;
	
	private String userCode;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(String userRoleId) {
		this.userRoleId = userRoleId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getStatusId() {
		return statusId;
	}

	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

	public String getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	@Override
	public String toString() {
		return "LoginDTO [userId=" + userId + ", userRoleId=" + userRoleId + ", userName=" + userName + ", passWord="
				+ passWord + ", statusId=" + statusId + ", employeeNo=" + employeeNo + ", userCode=" + userCode + "]";
	}



}
