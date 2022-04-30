FROM ubuntu:latest

#ENV TZ=Europe/Moscow
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN apt-get update -y && apt-get install -y nodejs npm
WORKDIR /frontend/
COPY ./frontend/ /frontend/
RUN npm install
EXPOSE 3000
ENV CI=true
CMD ["npm","start"] 
