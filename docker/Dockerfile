FROM centos:7

RUN yum install -y python3 curl
COPY src/requirements.txt /tmp/requirements.txt

RUN pip3 install -r /tmp/requirements.txt

COPY src/ /python_api/

EXPOSE 5290

CMD ["python3", "/python_api/python-api.py"]
