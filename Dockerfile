FROM node:8
ADD ./ /root/
WORKDIR /root/
RUN npm install
CMD ["node", "index.js"]
