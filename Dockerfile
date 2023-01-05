FROM node:latest

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run"]
CMD ["start"]