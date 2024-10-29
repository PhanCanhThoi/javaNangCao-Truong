package DangNhapModal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import KetNoiModal.KetNoi;

public class DangNhapDao {
	 public ArrayList<DangNhap> getDangNhap(){
		try {
			 ArrayList<DangNhap> ds = new ArrayList<DangNhap>();
			 KetNoi kn = new KetNoi();
			 kn.KetNoi();
			 String sql = "select * from KhachHang";
			 PreparedStatement cmd = kn.cn.prepareStatement(sql);
			 ResultSet rs = cmd.executeQuery();
			 while(rs.next()) {
				 String TenDn = rs.getString("tendn");
				 String MatKhau = rs.getString("pass");
				 ds.add(new DangNhap(TenDn, MatKhau));
			 }
			 rs.close();
			 return ds;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}		 
	 }
}
