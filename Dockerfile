FROM python:3
RUN apt update
RUN apt install python -y
RUN apt install wget unzip -y
RUN pip install Django
RUN pip install translators
RUN wget https://filex.manh.workers.dev/0:/iu.zip
RUN unzip iu.zip
EXPOSE 8000
CMD ["bash", "start.sh"]
