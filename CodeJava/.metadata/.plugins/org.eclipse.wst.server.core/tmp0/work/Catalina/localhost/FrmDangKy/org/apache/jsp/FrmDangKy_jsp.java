/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.28
 * Generated at: 2024-09-17 00:19:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FrmDangKy_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Bootstrap Example</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("  <!-- <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script> -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"Style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("\r\n");
      out.write("    <div class=\"main\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <!-- phần header-->\r\n");
      out.write("            <div class=\"bg-primary header\">\r\n");
      out.write("                <span>ĐĂNG KÝ</span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--phần contener-->\r\n");
      out.write("            <div class=\"container contain\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row \">  \r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <li class=\"text\">Đăng kí nhanh qua Facebook</li>\r\n");
      out.write("                        <img class=\"lbclose\" src=\"https://tailieu.vn/static/b2013az/templates/version1/default/images/btnfb277x45.jpg\">\r\n");
      out.write("                    </div>   \r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-md-4 read-more\">\r\n");
      out.write("                        <ul class=\"tipmark\">\r\n");
      out.write("                            <li>Thưởng ngay <span style=\"color: red;\">50</span> ePoints khi đăng ký mới &amp; <span style=\"color: red;\">5</span> ePoints cho mỗi lượt chia sẻ Facebook</li>\r\n");
      out.write("                            <li>Tích lũy nhiều ePoints khi Upload tài liệu <a rel=\"nofollow\" href=\"https://tailieu.vn/gioi-thieu-diem-epoints.html\">&gt;&gt;</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("   \r\n");
      out.write("            </div>  \r\n");
      out.write("            <!--text--> \r\n");
      out.write("            <div class=\"content\">\r\n");
      out.write("                <a href=\"https://tailieu.vn/\">Đăng kí mới bằng tài khoản TaiLieu.VN</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Nhập tài khoản-->\r\n");
      out.write("            <div class=\"container ctn-nhapmk\">\r\n");
      out.write("                <p class=\"title\" >Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN</p>\r\n");
      out.write("                <!--ho ten-->\r\n");
      out.write("                <div class=\"row p-1\">\r\n");
      out.write("                    <div class=\"col-md-3\">\r\n");
      out.write("                        <input placeholder=\"Nhập Username\" type=\"text\" name=\"txt.Username\" size=\"35\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("    \r\n");
      out.write("                    <div class=\"col-md-3\">\r\n");
      out.write("                        <input placeholder=\"Nhập họ và tên\" type=\"text\" name=\"txt.HoTen\" size=\"35\" style=\"margin-left: 10px;\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--Mật khẩu-->\r\n");
      out.write("                <div class=\"row\" style=\"margin-top: 10px;\">\r\n");
      out.write("                    <div class=\"col-md-3\">\r\n");
      out.write("                        <input placeholder=\"Nhập mật khẩu\" type=\"text\" size=\"35\" name=\"txt.pasword\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-3\">\r\n");
      out.write("                        <select name=\"txt-gioitinh\" id=\"txt-gioitinh\" style=\"height: 25.2px; margin-left: 10px;\">\r\n");
      out.write("                            <option value=\"\">Giới Tính</option>\r\n");
      out.write("                            <option value=\"Nam\">Nam</option>\r\n");
      out.write("                            <option value=\"Nữ\">Nữ</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--Nhâp lai mập khẩu-->\r\n");
      out.write("            <div class=\"row\" style=\"position: relative; right: 5px; padding-top: 10px;\">\r\n");
      out.write("                <div class=\"col-md-3\" style=\"width: 35;\">\r\n");
      out.write("                    <input placeholder=\"Nhập lại mật khẩu\" type=\"text\" size=\"35\" name=\"txt.paswordAgain\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-6\" style=\"position: relative; right: 5px;\">\r\n");
      out.write("                    <div class=\"col-md-2\">\r\n");
      out.write("                        <select name=\"txt-Ngaysinh\" id=\"txt-Ngaysinh\"  style=\"height: 25.2px;\">\r\n");
      out.write("                            <option value=\"ngaysinh\">Ngày Sinh</option>   \r\n");
      out.write("                            ");
for(int i = 1 ; i <=31 ; i++){ 
      out.write("\r\n");
      out.write("                            \t<option value=\"ngay");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\r\n");
      out.write("                            \t");
} 
      out.write("\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-md-2\" >\r\n");
      out.write("                        <select name=\"txt-Thang\" id=\"txt-Thang\" style=\"height: 25.2px; width: 88px; text-align: center;\">\r\n");
      out.write("                            <option value=\"Thang\">Tháng</option>\r\n");
      out.write("                            ");
for(int i = 1 ; i <=12 ; i++){ 
      out.write("\r\n");
      out.write("                            \t<option value=\"thang");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\r\n");
      out.write("                            \t");
} 
      out.write("\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-md-2\" >\r\n");
      out.write("                        <select name=\"txt-Nam\" id=\"txt-Nam\" style=\"height: 25.2px; width: 88px; text-align: center;\">\r\n");
      out.write("                            <option value=\"Nam\">Năm</option>\r\n");
      out.write("                            ");
for(int i = 2024 ; i >=1 ; i--){ 
      out.write("\r\n");
      out.write("                            \t<option value=\"nam");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\r\n");
      out.write("                            \t");
} 
      out.write("\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Địa chỉ email-->\r\n");
      out.write("            <div class=\"row\" style=\"position: relative; right: 5px; padding-top: 10px;\">\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <input placeholder=\"Nhập địa chỉ email\" type=\"text\" size=\"35\" name=\"txt.email\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <select name=\"txt-tinhthanh\" id=\"txt-tinhthanh\" style=\"height: 25.2px; width: 88px; text-align: center; margin-left: 10px;\">\r\n");
      out.write("                        <option value=\"Tinh/thanh\">Tỉnh/Thành</option>\r\n");
      out.write("                        <option value=\"Hà Nội\">Hà Nội</option>\r\n");
      out.write("                        <option value=\"Hồ Chí Minh\">Hồ Chí Minh</option>\r\n");
      out.write("                        <option value=\"Hải Phòng\">Hải Phòng</option>\r\n");
      out.write("                        <option value=\"Đà Nẵng\">Đà Nẵng</option>\r\n");
      out.write("                        <option value=\"Cần Thơ\">Cần Thơ</option>\r\n");
      out.write("                        <option value=\"An Giang\">An Giang</option>\r\n");
      out.write("                        <option value=\"Bà Rịa - Vũng Tàu\">Bà Rịa - Vũng Tàu</option>\r\n");
      out.write("                        <option value=\"Bắc Giang\">Bắc Giang</option>\r\n");
      out.write("                        <option value=\"Bắc Kạn\">Bắc Kạn</option>\r\n");
      out.write("                        <option value=\"Bạc Liêu\">Bạc Liêu</option>\r\n");
      out.write("                        <option value=\"Bắc Ninh\">Bắc Ninh</option>\r\n");
      out.write("                        <option value=\"Bến Tre\">Bến Tre</option>\r\n");
      out.write("                        <option value=\"Bình Định\">Bình Định</option>\r\n");
      out.write("                        <option value=\"Bình Dương\">Bình Dương</option>\r\n");
      out.write("                        <option value=\"Bình Phước\">Bình Phước</option>\r\n");
      out.write("                        <option value=\"Bình Thuận\">Bình Thuận</option>\r\n");
      out.write("                        <option value=\"Cao Bằng\">Cao Bằng</option>\r\n");
      out.write("                        <option value=\"Cà Mau\">Cà Mau</option>\r\n");
      out.write("                        <option value=\"Gia Lai\">Gia Lai</option>\r\n");
      out.write("                        <option value=\"Hà Giang\">Hà Giang</option>\r\n");
      out.write("                        <option value=\"Hà Nam\">Hà Nam</option>\r\n");
      out.write("                        <option value=\"Hà Tĩnh\">Hà Tĩnh</option>\r\n");
      out.write("                        <option value=\"Hòa Bình\">Hòa Bình</option>\r\n");
      out.write("                        <option value=\"Hưng Yên\">Hưng Yên</option>\r\n");
      out.write("                        <option value=\"Khánh Hòa\">Khánh Hòa</option>\r\n");
      out.write("                        <option value=\"Kiên Giang\">Kiên Giang</option>\r\n");
      out.write("                        <option value=\"Kon Tum\">Kon Tum</option>\r\n");
      out.write("                        <option value=\"Lai Châu\">Lai Châu</option>\r\n");
      out.write("                        <option value=\"Lâm Đồng\">Lâm Đồng</option>\r\n");
      out.write("                        <option value=\"Lạng Sơn\">Lạng Sơn</option>\r\n");
      out.write("                        <option value=\"Lào Cai\">Lào Cai</option>\r\n");
      out.write("                        <option value=\"Long An\">Long An</option>\r\n");
      out.write("                        <option value=\"Nam Định\">Nam Định</option>\r\n");
      out.write("                        <option value=\"Ninh Bình\">Ninh Bình</option>\r\n");
      out.write("                        <option value=\"Ninh Thuận\">Ninh Thuận</option>\r\n");
      out.write("                        <option value=\"Phú Thọ\">Phú Thọ</option>\r\n");
      out.write("                        <option value=\"Phú Yên\">Phú Yên</option>\r\n");
      out.write("                        <option value=\"Quảng Bình\">Quảng Bình</option>\r\n");
      out.write("                        <option value=\"Quảng Nam\">Quảng Nam</option>\r\n");
      out.write("                        <option value=\"Quảng Ngãi\">Quảng Ngãi</option>\r\n");
      out.write("                        <option value=\"Quảng Ninh\">Quảng Ninh</option>\r\n");
      out.write("                        <option value=\"Quảng Trị\">Quảng Trị</option>\r\n");
      out.write("                        <option value=\"Sóc Trăng\">Sóc Trăng</option>\r\n");
      out.write("                        <option value=\"Sơn La\">Sơn La</option>\r\n");
      out.write("                        <option value=\"Tây Ninh\">Tây Ninh</option>\r\n");
      out.write("                        <option value=\"Thái Bình\">Thái Bình</option>\r\n");
      out.write("                        <option value=\"Thái Nguyên\">Thái Nguyên</option>\r\n");
      out.write("                        <option value=\"Thanh Hóa\">Thanh Hóa</option>\r\n");
      out.write("                        <option value=\"Thừa Thiên - Huế\">Thừa Thiên - Huế</option>\r\n");
      out.write("                        <option value=\"Tiền Giang\">Tiền Giang</option>\r\n");
      out.write("                        <option value=\"Trà Vinh\">Trà Vinh</option>\r\n");
      out.write("                        <option value=\"Tuyên Quang\">Tuyên Quang</option>\r\n");
      out.write("                        <option value=\"Vĩnh Long\">Vĩnh Long</option>\r\n");
      out.write("                        <option value=\"Vĩnh Phúc\">Vĩnh Phúc</option>\r\n");
      out.write("                        <option value=\"Yên Bái\">Yên Bái</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("             <!--Nhập lại địa chỉ email-->   \r\n");
      out.write("            <div class=\"row\" style=\"position: relative; right: 5px; padding-top: 10px;\">\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <input placeholder=\"Nhập lại địa chỉ email\" type=\"text\" size=\"35\" name=\"txt.emailAgain\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3\" style=\"margin-left: 10px;\">\r\n");
      out.write("                    <input placeholder=\"Nhập mã xác nhận\" type=\"text\" size=\"15\" name=\"txt.maxacnhan\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--button đăng kí-->\r\n");
      out.write("            <div class=\"row\" style=\"padding-top: 30px;\">\r\n");
      out.write("                <div class=\"col-md-1\">\r\n");
      out.write("                    <button style=\"background:url(https://tailieu.vn/static/b2013az/templates/version1/default/images/icons/btncenter1x33.gif); height: 33px; width: 90px;    text-align: center; font-weight: bold;color: #FFF; border-radius: 5px;    cursor: pointer; border-color: #FFF;\">Đăng ký</button>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-6\" style=\"padding-top: 5px; font-size: 12px;\">\r\n");
      out.write("                    <input type=\"checkbox\" checked=\"checked\">&nbsp;Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <hr style=\"border-top: 0.5px dashed #000;margin-top: 1px;margin-bottom: 1px; margin-right: 400px;\">\r\n");
      out.write("            <div style=\"padding-top:5px;\">\r\n");
      out.write("                <p style=\"font-size: 12px; color: #0080AF;font-weight: 700; padding-top: 5;\" >\r\n");
      out.write("                Bạn đã có tài khoản TaiLieu.VN? Đăng nhập\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Phần footer-->\r\n");
      out.write("            <div style=\"height: 95px; background-color: #f5f4f4;\">\r\n");
      out.write("                <ul class=rows style=\"list-style-type: none; position: relative;right: 10px; font-size: 12.5px;display: inline;\">\r\n");
      out.write("                    <li class=\"col-md-4\" style=\"padding-top: 25px;\">\r\n");
      out.write("                        <p>Thưởng <span style=\"color: red;\">50</span> ePoints khi đăng kí mới</p>\r\n");
      out.write("                            <p>Tặng <span style=\"color: red;\">5</span> ePoints cho mỗi lượt chia sẽ Facebook</p>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-md-3\" style=\"position: relative;right: 110px; padding-top: 25px;\">\r\n");
      out.write("                        <div class=\"boder-left\" style=\"height: 70px; padding-left: 5px; border-color: rgb(88, 168, 238);border-width: 1px;\">\r\n");
      out.write("                            <p >Xem và tải trên <span style=\"color: rgb(39, 41, 152);\">1 triệu</span> Tài Liệu miễn phí</p>\r\n");
      out.write("                            <p>Kết nối <span style=\"color: rgb(39, 41, 152);\">5 triệu</span> thành viên <a href=\"https://tailieu.vn/\" style=\"color: rgb(2, 125, 240); text-decoration: none;\">TaiLieu.VN</a></p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-md-3\" style=\"position: relative;right: 160px;padding-right: 50px; padding-top: 25px;\">\r\n");
      out.write("                        <p style=\"line-height: 23px;  border-left-style: ridge; border-width: 1px; padding-left: 5px; border-color: rgb(88, 168, 238);\">Kết bạn với <a href=\"https://tailieu.vn/\" style=\"color: rgb(2, 125, 240); text-decoration: none;\">TaiLieu.VN</a> trên <a href=\"https://www.facebook.com/home.php\" style=\"color: rgb(2, 125, 240); text-decoration: none;\">Facebook</a> để nhận link download miễn phí <span style=\"color: red;\">100</span> tài liệu <span style=\"color: red;\">HOT</span> mỗi ngày</p>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
