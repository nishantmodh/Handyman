package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import mail.SendMail;

public final class fg_005fpass_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Forgot Password</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/layout.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.js\" ></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-replace.js\"></script>  \n");
      out.write("<script type=\"text/javascript\" src=\"js/Copse_400.font.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.nivo.slider.pack.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/imagepreloader.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tpreloadImages([\n");
      out.write("\t'images/menu1_active.gif',\n");
      out.write("\t'images/menu2_active.gif',\n");
      out.write("\t'images/menu3_active.gif',\n");
      out.write("\t'images/menu4_active.gif',\n");
      out.write("\t'images/marker_right_active.jpg',\n");
      out.write("\t'images/marker_left_active.jpg',\n");
      out.write("\t'images/menu5_active.gif']);\n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("\t<script type=\"text/javascript\" src=\"http://info.template-help.com/files/ie6_warning/ie6_script_other.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body id=\"page1\">\n");
      out.write("<div class=\"body1\">\n");
      out.write("\t<div class=\"body2\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("<!-- header -->\n");
      out.write("\t\t\t<header>\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\" id=\"logo\">First</a></h1>\n");
      out.write("\t\t\t\t\t<div class=\"right\">\n");
      out.write("\t\t\t\t\t\t<nav></nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<nav id=\"menu\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav1\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav2\"><a href=\"about_us.jsp\">ABOUT Us</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav3\"><a href=\"service.jsp\">Services</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav4\"><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t</header><div class=\"ic\">More Website Templates at TemplateMonster.com!</div>\n");
      out.write("\t  </div>\n");
      out.write("  </div>\n");
      out.write("\t</div>\n");
      out.write("<!-- / header -->\n");
      out.write("<!-- content -->\n");
      out.write("\t<div class=\"body5\">\n");
      out.write("\t\t<div class=\"body6\">\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<figure class=\"left\"><img src=\"images/letter1.png\" alt=\"\"></figure>\n");
      out.write("\t\t\t\t\t<h2>Welcome!</h2>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"body7\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("\t\t\t<section id=\"content\">\n");
      out.write("\t\t\t  <div class=\"wrapper\">\n");
      out.write("\t\t\t    <article class=\"col2\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pad1\">\n");
      out.write("\t\t\t\t\t\t\t<h2>Enter Your Email ID:</h2>\n");
      out.write("                                                        <div>\n");
      out.write("                                                            <form id=\"ContactForm\" name=\"choice\"><br/>\n");
      out.write("                                                                <div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div  class=\"wrapper\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<strong>Email ID:</strong><br/>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"bg\"><input type=\"text\" class=\"input\" name=\"email\"></div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div><br/>\n");
      out.write("                                                                        <input class=\"button\" type=\"submit\" value=\"Submit\">\n");
      out.write("                                                                        <input class=\"button\" type=\"reset\" value=\"Cancel\">\n");
      out.write("                                                               \n");
      out.write("                                                            \n");
      out.write("                                                        </div></form>\n");
      out.write("                                                           ");

        if(request.getParameter("Sub")!=null)
            {
            mail.SendMail h=new SendMail(request.getParameter("email"));
            }

        
      out.write("\n");
      out.write("                                                                        </div>\n");
      out.write("\t\t\t\t\t\t\t<!--<p class=\"pad_bot1\">This <a href=\"http://blog.templatemonster.com/2011/02/28/free-website-template-efficient-business/\" target=\"_blank\">Free Business Website Template</a> goes with two packages   with PSD source files and without them. PSD source files are available for free for the registered members of TemplateMonster.com. The basic package (without PSD source is available for anyone without registration).</p>\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pad_bot2\">\n");
      out.write("\t\t\t\t\t\t\t\t\tThis website template has several pages: Home, News, Services, Products, Contact (note that contact us form   doesn t work).</p>-->\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t<article class=\"col1 pad_left1\">\n");
      out.write("                    \n");
      out.write("\t\t\t\t  <!--<h2>Please Login Here</h2>\n");
      out.write("\t\t\t\t  <p><span class=\"bg\">\n");
      out.write("\t\t\t\t   <strong>Username:</strong> <br/>&nbsp;&nbsp;&nbsp;\n");
      out.write("                   <input type=\"text\" class=\"input\" >\n");
      out.write("\t\t\t      </p>\n");
      out.write("\t\t\t\t  <p><span class=\"bg\"><strong>Password:</strong>  <br/>&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t       <input type=\"password\" class=\"input\" maxlength=\"10\" >\n");
      out.write("\t\t\t      </span>\n");
      out.write(" \n");
      out.write("\t\t\t\t  <form method=\"post\" id=\"sign_up\" autocomplete=\"on\">\n");
      out.write("\t\t\t\t    \n");
      out.write("\t\t\t\t      <p><a href=\"#\" onClick=\"document.getElementById('sign_up').submit()\">Submit</a>\n");
      out.write("                         <a href=\"#\" onClick=\"document.getElementById('sign_up').reset()\">Clear</a></p>\n");
      out.write("                 \n");
      out.write("\t\t\t\t     \n");
      out.write("                           \n");
      out.write("\t\t\t      </form>\n");
      out.write("                  <p><span style=\"text-align: justify\"></span><span style=\"text-align: right\"></span><span style=\"text-align: justify\"></span><br/>\n");
      out.write("                    <a href=\"#\" class=\"button\"><span><span>Forgot Password</span></span></a></p>\n");
      out.write("                  <p><strong>IF NOT REGISTERED</strong>&nbsp;\n");
      out.write("                  <a href=\"reg.html\"><strong>Click Here</strong></a></p>-->\n");
      out.write("\t\t\t\t</article>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t  <p>&nbsp;</p>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\t\t<!-- / content -->\n");
      out.write("\t\t\t<!-- footer -->\n");
      out.write("\t<div class=\"body8\">\n");
      out.write("\t<div class=\"body9\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("\t\t\t<footer>\n");
      out.write("\t\t\t\t<div class=\"col_1\">\n");
      out.write("        <h3>Quick Links</h3>\n");
      out.write("\t  <ul class=\"list3\">\n");
      out.write("               <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("               <li><a href=\"about_us.jsp\">About Us</a></li>\n");
      out.write("\t       <li><a href=\"service.jsp\">Services</a></li>\n");
      out.write("               <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t  </ul>\n");
      out.write("</div>\n");
      out.write("<div class=\"col_2 pad_left1\">\n");
      out.write("           <h3>Benefits</h3>\n");
      out.write("           <ul class=\"list3 col_1\" >\n");
      out.write("\t\t\t<li>- Better Services</li>\n");
      out.write("\t\t\t<li>- Have Skilled Handymen</li>\n");
      out.write("\t\t\t<li>- Provide Feedback Services</li>\n");
      out.write("                        <li>- 24x7 Service</li>\n");
      out.write("                  </ul>\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_3\">\n");
      out.write("\t\t\t\t\t<!--<a href=\"index.html\" id=\"footer_logo\">First</a><a rel=\"nofollow\" href=\"http://www.templatemonster.com/\" target=\"_blank\">Website template</a><br>\n");
      out.write("\t\t\t\t\t\tdesigned by TemplateMonster.com\n");
      out.write("\t\t\t\t\t<p class=\"center\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"http://www.templates.com/product/3d-models/\" target=\"_blank\">3D Models</a><br>\n");
      out.write("\t\t\t\t\t\t\tprovided by Templates.com</p>-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</footer>\n");
      out.write("\t\t</div>\n");
      out.write("<!-- / footer -->\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<script type=\"text/javascript\"> Cufon.now(); </script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t$(window).load(function() {\n");
      out.write("\t$('#slider').nivoSlider({\n");
      out.write("        effect:'sliceDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'    \n");
      out.write("        slices:20,\n");
      out.write("        animSpeed:300,\n");
      out.write("        pauseTime:9999999999,\n");
      out.write("        startSlide:0, //Set starting Slide (0 index)\n");
      out.write("        directionNav:true, //Next & Prev\n");
      out.write("        directionNavHide:false, //Only show on hover\n");
      out.write("        controlNav:false, //1,2,3...\n");
      out.write("        controlNavThumbs:false, //Use thumbnails for Control Nav\n");
      out.write("        controlNavThumbsFromRel:false, //Use image rel for thumbs\n");
      out.write("        controlNavThumbsSearch: '.jpg', //Replace this with...\n");
      out.write("        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src\n");
      out.write("        keyboardNav:true, //Use left & right arrows\n");
      out.write("        pauseOnHover:true, //Stop animation while hovering\n");
      out.write("        manualAdvance:false, //Force manual transitions\n");
      out.write("        captionOpacity:1, //Universal caption opacity\n");
      out.write("        beforeChange: function(){},\n");
      out.write("        afterChange: function(){},\n");
      out.write("        slideshowEnd: function(){} //Triggers after all slides have been shown\n");
      out.write("    });\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
