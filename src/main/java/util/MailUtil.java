package util;
import entity.postmailEntity;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Date;
import java.util.Properties;

/**
 * 邮件工具类
 */
public class MailUtil {
    private final static String host = "smtp.163.com"; //163的服务器
    private final static String formName = "kuaiyizhushou@163.com";//你的邮箱
    private final static String password = "kuaiyi1"; //授权码
    private final static String replayAddress = "kuaiyizhushou@163.com"; //你的邮箱
    private final static String PORT = "465";
    private final static String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";


    public static void sendHtmlMail(postmailEntity info)throws Exception{
        info.setHost(host);
        info.setFormName(formName);
        info.setFormPassword(password);   //网易邮箱的授权码~不一定是密码
        info.setReplayAddress(replayAddress);

        Message message = getMessage(info);
        // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
        Multipart mainPart = new MimeMultipart();
        // 创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        // 设置HTML内容
        html.setContent(info.getContent(), "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        // 将MiniMultipart对象设置为邮件内容
        message.setContent(mainPart);
        Transport.send(message);
    }

    public static void sendTextMail(postmailEntity info) throws Exception {

        info.setHost(host);
        info.setFormName(formName);
        info.setFormPassword(password);
        info.setReplayAddress(replayAddress);
        Message message = getMessage(info);
        //消息发送的内容
        message.setText(info.getContent());

        Transport.send(message);
    }

//    public static boolean sslSend(MessageInfo msg1, EmailAccount emailAccount)
//            throws AddressException, MessagingException, IOException{
//        Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
//        // Get a Properties object
//        Properties props = new Properties();
//        props.setProperty("mail.smtp.host", emailAccount.getPlace());
//
//        props.setProperty("mail.smtp.port", "465");
//        props.setProperty("mail.smtp.socketFactory.port", "465");
//        props.put("mail.smtp.auth", "true");
//
//        final String username = emailAccount.getUsername();
//        final String password = emailAccount.getPassword();
//        Session session = Session.getDefaultInstance(props, new Authenticator(){
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(username, password);
//            }});
//        Message msg = new MimeMessage(session);
//
//        // 设置发件人和收件人
//        msg.setFrom(new InternetAddress(emailAccount.getUsername()));
//        List<String> tos = msg1.getTo();
//        Address to[] = new InternetAddress[tos.size()];
//        for(int i=0;i<tos.size();i++){
//            to[i] = new InternetAddress(tos.get(i));
//        }
//        // 多个收件人地址
//        msg.setRecipients(Message.RecipientType.TO, to);
//        msg.setSubject(msg1.getSubject()); // 标题
//        msg.setText(msg1.getMsg());// 内容
//        msg.setSentDate(new Date());
//        Transport.send(msg);
//        System.out.println("EmailUtil ssl协议邮件发送打印" +msg.toString());
//        return true;
//    }

    private static Message getMessage(postmailEntity info) throws Exception{
        final Properties p = System.getProperties() ;
        p.setProperty("mail.smtp.host", info.getHost());
        p.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        p.setProperty("mail.smtp.socketFactory.fallback", "false");
        p.setProperty("mail.smtp.auth", "true");
        p.setProperty("mail.smtp.user", info.getFormName());
        p.setProperty("mail.smtp.pass", info.getFormPassword());
        p.setProperty("mail.smtp.port", PORT);
        p.setProperty("mail.smtp.socketFactory.port", PORT);

        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session session = Session.getInstance(p, new Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(p.getProperty("mail.smtp.user"),p.getProperty("mail.smtp.pass"));
            }
        });
        session.setDebug(true);
        Message message = new MimeMessage(session);
        //消息发送的主题
        message.setSubject(info.getSubject());
        //接受消息的人
        message.setReplyTo(InternetAddress.parse(info.getReplayAddress()));
        //消息的发送者
        message.setFrom(new InternetAddress(p.getProperty("mail.smtp.user"),"快易助手"));
        // 创建邮件的接收者地址，并设置到邮件消息中
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(info.getToAddress()));
        // 消息发送的时间
        message.setSentDate(new Date());


        return message ;
    }
}