package com.pawn_shop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

@Configuration
public class MailConfig {
    public static final String HOST_NAME = "smtp.gmail.com";

    public static final int SSL_PORT = 465;

    public static final int TSL_PORT = 587;

    public static final String APP_EMAIL = "pawnshopc04@gmail.com";

    public static final String APP_PASSWORD = "ufgknjtbrihadbns";

    public static final String RECEIVE_EMAIL = "lhongson2909@gmail.com";
    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);

        mailSender.setUsername("pawnshopc04@gmail.com");
        mailSender.setPassword("ufgknjtbrihadbns");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");

        return mailSender;
    }
}
