FROM nginx:latest 
RUN mkdir /var/log/nginx/jenkins.access.log
RUN mkdir /var/log/nginx/jenkins.error.log
COPY index.html /usr/share/nginx/html

#RUN rm -rf /usr/share/nginx/html/*
#COPY example.com /etc/nginx/sites-available/example.com
#RUN ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/example.com
#RUN rm /etc/nginx/sites-enabled/default
