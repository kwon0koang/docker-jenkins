FROM jenkins/jenkins:jdk11

# 루트 사용자로 전환하여 패키지 설치를 위한 권한 획득
USER root

# apt-get update 및 vim 설치
# rm -rf /var/lib/apt/lists/* 명령어는 APT 패키지 관리자 캐시 디렉토리를 비워 캐시를 삭제하고 이미지 크기를 최소화하는 역할
RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y python3 && \
    apt-get install -y python3-venv && \
    rm -rf /var/lib/apt/lists/*

# 가상 환경 생성
RUN python3 -m venv venv

# 가상 환경 활성화
ENV PATH="/venv/bin:$PATH"

# appium-python-client 설치
RUN pip3 install appium-python-client

# Jenkins 설치 플러그인 목록
# RUN jenkins-plugin-cli --plugins \
#     git \
#     pipeline:2.10 \
#     docker:1.4.0 

# Jenkins 홈 디렉토리에 대한 권한 변경
# RUN chown -R jenkins:jenkins /var/jenkins_home


USER jenkins
