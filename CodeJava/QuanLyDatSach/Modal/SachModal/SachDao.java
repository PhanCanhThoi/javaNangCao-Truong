
package SachModal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import KetNoiModal.KetNoi;

public class SachDao { 
	public ArrayList<Sach> getSach(){
		try {
			ArrayList<Sach> ds = new ArrayList<Sach>();
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String sql = "Select * from sach";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maSach = rs.getString("masach");
				String tenSach = rs.getString("tensach");
				Long soLuong =Long.parseLong( rs.getString("soluong"));
				Long gia = Long.parseLong(rs.getString("gia"));
				String maLoai = rs.getString("maloai");
				String anh = rs.getString("anh");
				String tacGia = rs.getString("tacgia");
				ds.add(new Sach(maSach, tenSach, tacGia, soLuong, gia, anh, maLoai));
			}
			rs.close();
			return ds;
		} catch (Exception e) {
			System.out.println("loi"+e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
}
