FROM ubuntu:18.04
RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip -y
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
expose 5000
CMD ["python3", "app.py"]

