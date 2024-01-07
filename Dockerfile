FROM jenkins/jenkins:jdk11

# USER root

# Jenkins 설치 플러그인 목록
# RUN jenkins-plugin-cli --plugins \
#     git \
#     pipeline:2.10 \
#     docker:1.4.0 

# Jenkins 홈 디렉토리에 대한 권한 변경
# RUN chown -R jenkins:jenkins /var/jenkins_home

USER jenkins
