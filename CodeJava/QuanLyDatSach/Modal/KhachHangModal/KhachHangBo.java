package KhachHangModal;

import java.security.MessageDigest;
import java.util.ArrayList;

public class KhachHangBo {
	ArrayList<KhachHang> ds = new ArrayList<KhachHang>();
	KhachHangDao khDao = new KhachHangDao();
	public ArrayList<KhachHang> getKhachHang(){
		ds = khDao.getKhachHang();
		return ds;
	}
	
	public boolean CheckDangNhap(String tendn , String pass) {
		boolean check = false;
		for(KhachHang kh : khDao.getKhachHang()) {
			if(tendn.equals(kh.getTendn())&&pass.equals(kh.getPass())) {
				check = true;
				return check;
			}
		}
		return check;
	}
	public int addKhachHang(KhachHang kh) {
		int kq = khDao.addKhachHang(kh);
		return kq;
	}
	
	public String HashMatKhau(String pass) {
		try {
			if(pass==null) {
				pass="";
			}
			MessageDigest digest = MessageDigest.getInstance("MD5");
			byte[] hashedBytes = digest.digest(pass.getBytes());
			
			StringBuilder hexString = new StringBuilder();
			for(byte b : hashedBytes) {
				hexString.append(String.format("%02x", b));
			}
			return hexString.toString();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("ma hoa mat khau" + e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
}