FROM python:3.10
MAINTAINER Tahira Mughal 
#install wget for maven
RUN apt-get install -y wget
WORKDIR /LBG-Python
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
ENV PORT 8081
EXPOSE ${PORT}
RUN python -m unittest discover
CMD [ "python", "./lbg.py","--PORT","8081" ]
