package com.project3;

public class QnaDTO {
	
	private int qnum;
	private String qname;	
	private String qpwd;
	private String qsubject;
	private String qcontent;
	private String qsaveFileName; 
	private String qdate;
	private int qhits;
	
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public String getQpwd() {
		return qpwd;
	}
	public void setQpwd(String qpwd) {
		this.qpwd = qpwd;
	}
	public String getQsubject() {
		return qsubject;
	}
	public void setQsubject(String qsubject) {
		this.qsubject = qsubject;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQsaveFileName() {
		return qsaveFileName;
	}
	public void setQsaveFileName(String qsaveFileName) {
		this.qsaveFileName = qsaveFileName;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public int getQhits() {
		return qhits;
	}
	public void setQhits(int qhits) {
		this.qhits = qhits;
	}

}
