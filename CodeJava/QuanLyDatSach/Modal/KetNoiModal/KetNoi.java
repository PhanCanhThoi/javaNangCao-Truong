package KetNoiModal;
import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	public Connection cn;
	public void KetNoi()throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url ="jdbc:sqlserver://LAB403-02:1433; databaseName=QuanLySach ; user=sa; password=123; encrypt=true; trustServerCertificate=true";
		cn=DriverManager.getConnection(url);
		System.out.println("Da Ket Noi");
	}
}
