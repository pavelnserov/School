FROM node:12

WORKDIR /frontend/
COPY ./frontend/ /frontend/
RUN npm install
EXPOSE 3000
ENV CI=true
CMD ["npm","start"] 
