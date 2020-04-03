package book.board.vo;

import java.util.Date;

public class BookBoard {
private String sid;
private String seq;
private String title;
private String content;
private Date regdate;
private int hit;


public String getSid() {
	return sid;
}
public void setSid(String sid) {
	this.sid = sid;
}
public String getSeq() {
	return seq;
}
public void setSeq(String seq) {
	this.seq = seq;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
public int getHit() {
	return hit;
}
public void setHit(int hit) {
	this.hit = hit;
}


}
