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

# 가상 환경 생성 및 활성화
RUN python3 -m venv venv
ENV PATH="/venv/bin:$PATH"

RUN pip3 install appium-python-client
RUN pip3 install html-testRunner

USER jenkins
