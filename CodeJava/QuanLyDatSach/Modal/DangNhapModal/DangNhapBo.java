package DangNhapModal;

import java.util.ArrayList;

public class DangNhapBo {
	ArrayList<DangNhap> ds = new ArrayList<DangNhap>();
	public ArrayList<DangNhap> getDangNhap(){
		DangNhapDao dnDao = new DangNhapDao();
		ds = dnDao.getDangNhap();
		return ds;
	}
}
