FROM ultralytics/yolov5:latest

RUN pip uninstall -y pafy
RUN pip install youtube_dl
RUN pip install git+https://github.com/Cupcakus/pafy