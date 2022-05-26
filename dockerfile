FROM python:3.8-slim-buster
MAINTAINER "DOMINIKA RADWAN"
ENV SRC_DIR /usr/bin/src/webapp/src

COPY * ${SRC_DIR}/

WORKDIR ${SRC_DIR}
ENV PYTHONUNBUFFERED=1
EXPOSE 8083
CMD ["python3", "main.py"]

