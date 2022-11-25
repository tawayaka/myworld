FROM python:3
RUN apt update
RUN apt install wget unzip -y
RUN pip install Django
RUN pip install translators
RUN wget https://filex.manh.workers.dev/0:/pi.zip
RUN unzip pi.zip
ENV PYTHONUNBUFFERED=1
CMD ["bash", "start.sh"]
