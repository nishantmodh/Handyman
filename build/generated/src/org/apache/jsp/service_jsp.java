package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class service_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Services</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" media=\"all\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/layout.css\" type=\"text/css\" media=\"all\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.js\" ></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-replace.js\"></script>  \r\n");
      out.write("<script type=\"text/javascript\" src=\"js/Copse_400.font.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/imagepreloader.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tpreloadImages([\r\n");
      out.write("\t'images/menu1_active.gif',\r\n");
      out.write("\t'images/menu2_active.gif',\r\n");
      out.write("\t'images/menu3_active.gif',\r\n");
      out.write("\t'images/menu4_active.gif',\r\n");
      out.write("\t'images/menu5_active.gif']);\r\n");
      out.write("</script>\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"http://info.template-help.com/files/ie6_warning/ie6_script_other.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/html5.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"page3\">\r\n");
      out.write("<div class=\"body1\">\r\n");
      out.write("\t<div class=\"body2\">\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("<!-- header -->\r\n");
      out.write("\t\t\t<header>\r\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\" id=\"logo\">First</a></h1>\r\n");
      out.write("\t\t\t\t\t<div class=\"right\">\r\n");
      out.write("\t\t\t\t\t\t<nav> </nav>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<nav id=\"menu\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav1\"><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav2\"><a href=\"about_us.jsp\">ABOUT Us</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav3\" id=\"active\"><a href=\"service.jsp\">Services</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav4\"><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</nav>\r\n");
      out.write("\t\t\t</header><div class=\"ic\">More Website Templates at TemplateMonster.com!</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("<!-- / header -->\r\n");
      out.write("<!-- content -->\r\n");
      out.write("\t<div class=\"body5\">\r\n");
      out.write("\t\t<div class=\"body6\">\r\n");
      out.write("\t\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t<figure class=\"left\"><img src=\"images/letter3.png\" alt=\"\"></figure>\r\n");
      out.write("\t\t\t\t\t<h2>These We Can Do <span>For You</span></h2>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"body7\">\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t<section id=\"content\">\r\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t<article class=\"col2\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"pad1\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>Our Services</h2>\r\n");
      out.write("\t\t\t\t\t\t</div>\t\r\n");
      out.write("                                            \r\n");
      out.write("                                            \r\n");
      out.write("                                            <div><form> \r\n");
      out.write("                                                                                     \r\n");

Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();
try {

String s="select * from services_details_adm ";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    
      out.write("\r\n");
      out.write("       <div class=\"box2\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"box2_top\">\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"box2_bot\">\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"pad\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<figure class=\"left\"><img src=\"images/");
      out.print(rs.getString(2) );
      out.write("\" alt=\"\"></figure>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("                                                                                        <br/><h4>");
      out.print(rs.getString(3) );
      out.write("</h4><br/>\r\n");
      out.write("                                                                                                <p><center><img src=\"images/");
      out.print(rs.getString(5) );
      out.write("\"></center></p>\r\n");
      out.write("                                                                                                <p> &nbsp;&nbsp;&nbsp;&nbsp;");
      out.print(rs.getString(4) );
      out.write("</p>\r\n");
      out.write("                                                                                            \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("            </div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("        \r\n");
      out.write("    ");

    }
  
}catch(Exception e)
{
    
}

      out.write(" \r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("     </form>\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</article>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("<!-- / content -->\r\n");
      out.write("<!-- footer -->\r\n");
      out.write("\t<div class=\"body8\">\r\n");
      out.write("\t<div class=\"body9\">\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t<footer>\r\n");
      out.write("\t\t\t\t<div class=\"col_1\">\r\n");
      out.write("        <h3>Quick Links</h3>\r\n");
      out.write("\t  <ul class=\"list3\">\r\n");
      out.write("               <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("               <li><a href=\"about_us.jsp\">About Us</a></li>\r\n");
      out.write("\t       <li><a href=\"service.jsp\">Services</a></li>\r\n");
      out.write("               <li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t  </ul>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col_2 pad_left1\">\r\n");
      out.write("           <h3>Benefits</h3>\r\n");
      out.write("           <ul class=\"list3 col_1\" >\r\n");
      out.write("\t\t\t<li>- Better Services</li>\r\n");
      out.write("\t\t\t<li>- Have Skilled Handymen</li>\r\n");
      out.write("\t\t\t<li>- Provide Feedback Services</li>\r\n");
      out.write("                        <li>- 24x7 Service</li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col_3\">\r\n");
      out.write("\t\t\t\t\t<!--<a href=\"index.html\" id=\"footer_logo\">First</a><a rel=\"nofollow\" href=\"http://www.templatemonster.com/\" target=\"_blank\">Website template</a><br>\r\n");
      out.write("\t\t\t\t\t\tdesigned by TemplateMonster.com\r\n");
      out.write("\t\t\t\t\t<p class=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"http://www.templates.com/product/3d-models/\" target=\"_blank\">3D Models</a><br>\r\n");
      out.write("\t\t\t\t\t\t\tprovided by Templates.com</p>-->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</footer>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("<!-- / footer -->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("<script type=\"text/javascript\"> Cufon.now(); </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
