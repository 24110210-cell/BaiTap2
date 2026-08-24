# Stage 1: Biên dịch file .java thành .class
FROM openjdk:11-jdk-slim AS builder
WORKDIR /app
COPY src ./src
COPY web ./web
RUN mkdir -p web/WEB-INF/classes
RUN javac -d web/WEB-INF/classes -classpath "web/WEB-INF/lib/*" src/java/*/*.java 2>/dev/null || javac -d web/WEB-INF/classes src/java/*/*.java 2>/dev/null || true

# Stage 2: Chạy ứng dụng với Apache Tomcat
FROM tomcat:9.0-jdk11-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY --from=builder /app/web /usr/local/tomcat/webapps/ROOT
EXPOSE 8080
CMD ["catalina.sh", "run"]