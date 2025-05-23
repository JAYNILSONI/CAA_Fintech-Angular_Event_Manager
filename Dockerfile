FROM nginx:1.25-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY dist/events-website/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]