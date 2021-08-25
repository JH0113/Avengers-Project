package model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	String memId;
	String prodName;
	int prodPrice;
	String prodImage;
	String prodDetail;
	String prodBrand;
	String prodKind;
	String prodMethod;
	String prodLocation;
	String prodGuarantee;
	String prodState;
	int prodQuantity;
	
	public String getProdMethod() {
		return prodMethod;
	}
	public void setProdMethod(String prodMethod) {
		this.prodMethod = prodMethod;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdImage() {
		return prodImage;
	}
	public void setProdImage(String prodImage) {
		this.prodImage = prodImage;
	}
	public String getProdDetail() {
		return prodDetail;
	}
	public void setProdDetail(String prodDetail) {
		this.prodDetail = prodDetail;
	}
	public String getProdBrand() {
		return prodBrand;
	}
	public void setProdBrand(String prodBrand) {
		this.prodBrand = prodBrand;
	}
	public String getProdKind() {
		return prodKind;
	}
	public void setProdKind(String prodKind) {
		this.prodKind = prodKind;
	}
	public String getProdLocation() {
		return prodLocation;
	}
	public void setProdLocation(String prodLocation) {
		this.prodLocation = prodLocation;
	}
	public String getProdGuarantee() {
		return prodGuarantee;
	}
	public void setProdGuarantee(String prodGuarantee) {
		this.prodGuarantee = prodGuarantee;
	}
	public String getProdState() {
		return prodState;
	}
	public void setProdState(String prodState) {
		this.prodState = prodState;
	}
	public int getProdQuantity() {
		return prodQuantity;
	}
	public void setProdQuantity(int prodQuantity) {
		this.prodQuantity = prodQuantity;
	}
	
}
