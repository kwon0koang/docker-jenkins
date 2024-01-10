FROM node:21

# Appium 설치
RUN npm install -g appium

# 드라이버 설치
RUN appium driver install uiautomator2
RUN appium driver install xcuitest

# RUN apt-get update && \
#     apt-get install -y wget unzip default-jdk

# 환경 변수 설정
# ENV JAVA_HOME /usr/lib/jvm/default-java
# ENV PATH $PATH:$JAVA_HOME/bin
# ENV ANDROID_HOME /var/jenkins_home/sdk
# ENV PATH $PATH:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Appium 서버 실행을 위한 명령 추가
CMD ["appium", "-p", "4723"]