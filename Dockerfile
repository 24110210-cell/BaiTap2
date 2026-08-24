# Stage 1: Build file WAR bằng Maven/Ant
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests || ant -f build.xml

# Stage 2: Chạy trên Tomcat 9
FROM tomcat:9.0-jdk11-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/ROOT
# Copy file war hoặc thư mục web đã build vào ROOT
COPY --from=build /app/dist/*.war /usr/local/tomcat/webapps/ROOT.war 2>/dev/null || COPY web /usr/local/tomcat/webapps/ROOT
EXPOSE 8080
CMD ["catalina.sh", "run"]