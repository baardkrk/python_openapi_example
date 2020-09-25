FROM python:3.8.6-slim

ADD requirements.txt /
RUN pip3 install -r requirements.txt

ADD src/ /src/
ADD start.sh /
RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]
