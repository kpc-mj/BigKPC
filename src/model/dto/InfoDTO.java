package model.dto;

public class InfoDTO {

	private String cmpName;
	private String busName;
	private String cmpTxt;
	
	public InfoDTO() {}
	
	public InfoDTO(String cmpName, String busName) {
		this.cmpName = cmpName;
		this.busName = busName;
	}
	
	public InfoDTO(String cmpName, String busName, String cmpTxt) {
		this.cmpName = cmpName;
		this.busName = busName;
		this.cmpTxt = cmpTxt;
	}

	public String getCmpName() {
		return cmpName;
	}

	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}

	public String getBusName() {
		return busName;
	}

	public void setBusName(String busName) {
		this.busName = busName;
	}
	
	public String getCmpTxt() {
		return cmpTxt;
	}

	public void setCmpTxt(String cmpTxt) {
		this.cmpTxt = cmpTxt;
	}

	@Override
	public String toString() {
		return  cmpName + "@" + busName + "@" + cmpTxt + "\n";
	}
	
	
}