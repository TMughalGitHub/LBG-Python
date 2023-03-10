FROM python:3.10
MAINTAINER Tahira Mughal 
ARG portno=8080
#install wget for maven
RUN sudo apt-get install -y wget
WORKDIR /LBG-Python
COPY requirements.txt ./
RUN sudo pip install --no-cache-dir -r requirements.txt
ENV PORT=${portno}
EXPOSE ${portno}
COPY . .
CMD [ "python", "./lbg.py" ]
