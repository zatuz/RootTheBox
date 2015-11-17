####################################
#
#  Dockerfile for Root the Box
#  v0.1.0 - By Moloch

FROM python:2.7
MAINTAINER moloch

RUN apt-get update -y && apt-get install -y build-essential

RUN mkdir /opt/rtb
ADD . /opt/rtb
RUN pip install -r /opt/rtb/setup/requirements.txt

VOLUME ["/opt/rtb/files"]
ENTRYPOINT ["/opt/rtb/rootthebox.py"]
