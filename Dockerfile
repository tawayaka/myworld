FROM python:3
RUN apt update
RUN apt install python -y
RUN apt install wget unzip -y
RUN pip install Django
RUN pip install translators
RUN wget https://filex.manh.workers.dev/0:/myworld.zip
RUN unzip myworld.zip
WORKDIR /myworld
EXPOSE 8000
CMD ["python", "manage.py"]
