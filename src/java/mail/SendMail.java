package mail;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.sun.org.apache.bcel.internal.generic.RETURN;

import java.util.*;
import java.io.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author lenovo
 */
public class SendMail {
      private static final String SMTP_AUTH_USER = "nishantmodh";
    private static final String SMTP_AUTH_PWD = "Nish1992"; // Password

    public SendMail(String eml) {
        
        try {
            String host = "smtp.gmail.com";
            // v.copyInto(um);
         //   String from=(String) tempv.get(1);
         //   String to=(String) tempv.get(2);
            String from = "nishantmodh@gmail.com";
            String[] to = {eml};
           // String filename = "Attach.txt";
          //  File f = new File("d:\\"+filename);
           // System.out.println(f.getAbsolutePath());
            //Instance of Properties is used to store the System Property.
            // Get system properties
            // Get system properties
            Properties props = System.getProperties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.port", "" + 587);
            Authenticator auth = new SMTPAuthenticator();
            Session session = Session.getDefaultInstance(props, auth);
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            //convert the receipents address to the Internet Address
            //convert the receipents address to the Internet Address
            InternetAddress[] toAddress = new InternetAddress[to.length];
            for (int i = 0; i < to.length; i++) {
                toAddress[i] = new InternetAddress(to[i]);
            }
            message.setRecipients(Message.RecipientType.TO, toAddress);
            message.setSubject("Test Mail");
            BodyPart messageBodyPart = new MimeBodyPart();
            ResultSet rs1=null;
            try
            {
                HttpServletRequest request=null;
                HttpServletResponse response=null;
             Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
            Statement st=cn.createStatement();
            Statement st1=cn.createStatement();
            String s="select User_ID from regi_data_usr where Email_ID="+eml+"";
            ResultSet rs=st.executeQuery(s);
            
                if (rs.next()) {
                     String s1="select Password from login_data where User_ID='"+rs.getString(1)+"' ";
                     rs1=st1.executeQuery(s1);
                     messageBodyPart.setText(rs1.getString(1));
                     response.sendRedirect("index.jsp");
                    
                }

            }catch(Exception e)
            {
                System.out.println("Eror");
            }
            
            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);
          //  messageBodyPart = new MimeBodyPart();
          //  DataSource source = new FileDataSource(filename);
         //  messageBodyPart.setDataHandler(new DataHandler(source));
          //  messageBodyPart.setFileName(filename);
           // multipart.addBodyPart(messageBodyPart);
            message.setContent(multipart);
            try {
                Transport.send(message);
            } catch (SendFailedException sfe) {
                message.setRecipients(Message.RecipientType.TO, sfe.getValidUnsentAddresses());
                Transport.send(message);
            }
        } catch (MessagingException ex) {
            System.out.println("Error");
          //  Logger.getLogger(get_userkey.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
  private static class SMTPAuthenticator extends javax.mail.Authenticator {

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            String username = SMTP_AUTH_USER;
            String password = SMTP_AUTH_PWD;
            return new PasswordAuthentication(username, password);
        }
    }

}
