package LoaiModal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import KetNoiModal.KetNoi;

public class LoaiDao {
	public ArrayList<Loai> getLoai(){
		try {
			ArrayList<Loai> ds = new ArrayList<Loai>();
			//b1 Kết nối vào sql
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//B2 Tạo câu lệnh Sql
			String sql = "select * from loai";
			//B3: Tạo câu lệnh
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			//B4 Duyệt qua rs 
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maLoai = rs.getString("maloai");
				String tenLoai = rs.getString("tenloai");
				ds.add(new Loai(maLoai, tenLoai));
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