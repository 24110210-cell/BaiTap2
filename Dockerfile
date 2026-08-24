FROM tomcat:10.1-jdk21-openjdk-slim

# Tải và cài đặt OpenJDK 26 (fix lỗi class file version 70.0)
RUN apt-get update && apt-get install -y wget && \
    wget https://download.oracle.com/java/26/latest/jdk-26_linux-x64_bin.tar.gz && \
    tar -xzf jdk-26_linux-x64_bin.tar.gz -C /usr/local/ && \
    rm jdk-26_linux-x64_bin.tar.gz

# Cập nhật đường dẫn JAVA_HOME sang JDK 26
ENV JAVA_HOME=/usr/local/jdk-26
ENV PATH=$JAVA_HOME/bin:$PATH

# Xóa app mặc định và copy ROOT.war
RUN rm -rf /usr/local/tomcat/webapps/*
COPY dist/mail.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]