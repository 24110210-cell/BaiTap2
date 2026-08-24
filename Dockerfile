FROM eclipse-temurin:17-jdk

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Cài đặt Tomcat 9 phiên bản mới hơn
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz \
    && tar -xvf apache-tomcat-9.0.85.tar.gz --strip-components=1 \
    && rm apache-tomcat-9.0.85.tar.gz

# Xóa ứng dụng mặc định và copy WAR
RUN rm -rf webapps/ROOT
COPY dist/mail.war webapps/ROOT.war

EXPOSE 8080

# Chạy Tomcat kèm tham số bỏ qua lỗi cgroupv2 mbean
CMD ["catalina.sh", "run"]