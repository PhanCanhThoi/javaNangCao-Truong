
package temp;

public class Hang {
	private String tenHang;
	private long gia;
	private long soLuong;
	private long thanhTien;
	
	public Hang(String tenHang , long soLuong , long Gia) {
		this.tenHang = tenHang;
		this.soLuong = soLuong;
		this.gia=Gia;
		this.thanhTien = soLuong*Gia;
	}

	public String getTenHang() {
		return tenHang;
	}

	public void setTenHang(String tenHang) {
		this.tenHang = tenHang;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public long getSoLuong() {
		return soLuong;
	}

	public void setSoLuong (long soLuong) {
		this.soLuong = soLuong;
	}

	public long getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	
}