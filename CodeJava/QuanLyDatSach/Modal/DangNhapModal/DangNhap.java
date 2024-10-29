package DangNhapModal;

public class DangNhap {
	private String TenDn;
	private String MatKhau;
	public String getTenDn() {
		return TenDn;
	}
	public void setTenDn(String tenDn) {
		TenDn = tenDn;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public DangNhap(String tenDn, String matKhau) {
		super();
		TenDn = tenDn;
		MatKhau = matKhau;
	}
	public DangNhap() {
		super();
		// TODO Auto-generated constructor stub
	}	
	
	
}
