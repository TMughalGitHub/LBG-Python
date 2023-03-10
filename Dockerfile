FROM python:3.10
MAINTAINER Tahira Mughal 
#install wget for maven
RUN apt-get install -y wget
WORKDIR /LBG-Python
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
COPY . .
CMD [ "python", "./lbg.py" ]
