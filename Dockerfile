# Sử dụng Tomcat 10 đi kèm Java 21 (Bản mới nhất đã fix triệt để lỗi CgroupV2)
FROM tomcat:10.1-jdk21-openjdk-slim

# Xóa toàn bộ ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file war của bạn vào làm app chính
COPY dist/mail.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]