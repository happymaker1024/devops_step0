FROM openjdk:17-jdk-slim

# 경로 이동
WORKDIR /app  

# jar 파일 복사
COPY build/libs/*SNAPSHOT.jar app.jar

# port 설정
EXPOSE 9000

# 실행 진입 명령어
ENTRYPOINT [ "java", "-jar", "app.jar" ]

