package model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MsgContentsDTO {
	int roomNum;
	String sellerId;
	String buyerId;
	String msgText;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date msgTime;

	public Date getMsgTime() {
		return msgTime;
	}

	public void setMsgTime(Date msgTime) {
		this.msgTime = msgTime;
	}

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}

	public String getMsgText() {
		return msgText;
	}

	public void setMsgText(String msgText) {
		this.msgText = msgText;
	}

}
