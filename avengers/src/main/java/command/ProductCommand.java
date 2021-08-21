package command;

import org.springframework.web.multipart.MultipartFile;

public class ProductCommand {
	String prodName;
	String prodPrice;
	MultipartFile [] prodImage;
	String prodDetail;
	String prodLocation;
	String prodTag;
	MultipartFile [] prodImageplus;
	
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(String prodPrice) {
		this.prodPrice = prodPrice;
	}
	public MultipartFile[] getProdImage() {
		return prodImage;
	}
	public void setProdImage(MultipartFile[] prodImage) {
		this.prodImage = prodImage;
	}
	public String getProdDetail() {
		return prodDetail;
	}
	public void setProdDetail(String prodDetail) {
		this.prodDetail = prodDetail;
	}
	public String getProdLocation() {
		return prodLocation;
	}
	public void setProdLocation(String prodLocation) {
		this.prodLocation = prodLocation;
	}
	public String getProdTag() {
		return prodTag;
	}
	public void setProdTag(String prodTag) {
		this.prodTag = prodTag;
	}
	public MultipartFile[] getProdImageplus() {
		return prodImageplus;
	}
	public void setProdImageplus(MultipartFile[] prodImageplus) {
		this.prodImageplus = prodImageplus;
	}
	
	
}
