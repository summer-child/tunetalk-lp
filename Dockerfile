FROM nginx

COPY conf/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/log/nginx/ && mkdir -p /usr/share/landing
RUN chmod 755 -R /usr/share/landing

ADD css /usr/share/landing/css
ADD images /usr/share/landing/images
ADD js /usr/share/landing/js
ADD webfonts /usr/share/landing/webfonts
ADD index.html /usr/share/landing/

CMD ["nginx", "-g", "daemon off;"]