package SachModal;

import java.util.ArrayList;

public class SachBo {
	SachDao sachDao = new SachDao();
	ArrayList<Sach> ds;
	public ArrayList<Sach> getSach(){
		ds = sachDao.getSach();
		return ds;
	}
	
	public ArrayList<Sach> timMa(String MaLoai){
		ArrayList<Sach> temp = new ArrayList<Sach>();
		for(Sach sach:ds) {
			if(sach.getMaLoai().toLowerCase().trim().equals(MaLoai.toLowerCase().trim())) {
				temp.add(sach);
			}
		}
		return temp;
	}
	
	public ArrayList<Sach> Tim(String key){
		ArrayList<Sach> temp = new ArrayList<Sach>();
		for(Sach sach: ds) {
			if(sach.getTenSach().toLowerCase().trim().contains(key.toLowerCase().trim()) || sach.getTacGia().toLowerCase().trim().contains(key.toLowerCase().trim())) {
				temp.add(sach);
			}
		}
		
		return temp;
	}
}
