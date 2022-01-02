FROM ultralytics/yolov5:latest

RUN pip uninstall -y pafy
RUN pip install youtube_dl
RUN pip install git+https://github.com/Cupcakus/pafy

COPY detect_giraffe.py /usr/src/app/
COPY detect_giraffe.sh /usr/src/app/

ENV HOME=/usr/src/app
ARG ALERT_URL
ENV ALERT_URL=${ALERT_URL} 

CMD [ "./detect_giraffe.sh" ]