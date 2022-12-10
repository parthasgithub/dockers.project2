# this is the base node plus redis
From node:alpine
# saving the npm installs to app dir
WORKDIR '/app'
# run installing the dependcies
COPY package.json .
RUN npm install 
COPY . .
# and cmd to start it
CMD ["npm", "start"] 
