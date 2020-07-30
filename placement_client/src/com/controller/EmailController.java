package com.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Forgot_passwordbean;
import com.dao.Forgot_passworddao;




@WebServlet("/EmailController")
public class EmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String str=request.getParameter("action");
		if(str.equalsIgnoreCase("Send OTP"))
		{
			Forgot_passwordbean fpass=new Forgot_passwordbean();
			String email=request.getParameter("email");
			Forgot_passworddao fdao=new Forgot_passworddao();
			fpass =fdao.fetchEmailData(email);
			if(fpass!=null)
			{
				
				final String Senderid = "placementcorner8@gmail.com";
				final String password = "Corner@123";
				
				Properties props = new Properties();
				props.put("mail.smtp.auth", "true");

				props.put("mail.smtp.starttls.enable", "true");

				props.put("mail.smtp.host", "smtp.gmail.com");

				props.put("mail.smtp.port", "587");



				Session session = Session.getInstance(props, new Authenticator() {

					protected PasswordAuthentication getPasswordAuthentication() {

						return new PasswordAuthentication(Senderid, password);

					}

				});

				try {

					Random rand = new Random();

					int otp = rand.nextInt(900000) + 100000;
					Message message = new MimeMessage(session);

					message.setFrom(new InternetAddress(Senderid));

					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(fpass.getEmail()));																		// mail
					message.setSubject("OTP Request");

					String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f1f1f1; width:500px; height:200px'><div style='background-color:#1db1fa; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>Placement Corner</h3></div><p style='color:gray; margin-left:-300px;'>Dear "

							+ fpass.getName() + ",</p><br><p style='color:gray; margin-top:-10px;'>" + otp

							+ "  is your One Time Password.Do NOT share this code with anyone for security reasons.this is valid for 10 minutes.</p><div></center></body></html>";

					message.setContent(msg1, "text/html; charset=utf-8");
					Transport.send(message);

					HttpSession otpsession = request.getSession();
					otpsession.setAttribute("otp", otp);

					otpsession.setMaxInactiveInterval(10 * 60);  // Set OTP valid time.
					otpsession.setAttribute("FpassData", fpass.getEmail()); //  user Email adress For sending OTP

					request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);

				} catch (Exception e) {

					request.setAttribute("SendOtpError", "Otp Not Send");
					request.setAttribute("FpassData", null);
					request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);

					e.printStackTrace();

				}
			
			}
			else
			{
				request.setAttribute("SendOtpError", "Email Address Not Valid");
				request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
			}
			
			
			
		}
		
		else if(str.equalsIgnoreCase("ConfirmOtp"))
		{
			HttpSession session=request.getSession(false);
			String Generatedotp=String.valueOf(session.getAttribute("otp"));
			String enterOtp=request.getParameter("EnterOtp");
			if(Generatedotp.equalsIgnoreCase(enterOtp))
			{
				request.setAttribute("OtpMatch", "Match");
				
				request.getRequestDispatcher("recoverpassword.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("ErrorOtp", "OTP Not Match");
				request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
			}
		}
		else if(str.equalsIgnoreCase("RecoverPassword"))
		{
			
			String pass=request.getParameter("NewPassword");
			String email=request.getParameter("email");
			
			Forgot_passworddao fdao=new Forgot_passworddao();
			fdao.UpdatePassword(email, pass);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		}
	}


