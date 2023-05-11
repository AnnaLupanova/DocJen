FROM nginx:latest 
RUN mkdir /var/log/nginx/jenkins.access.log
RUN mkdir /var/log/nginx/jenkins.error.log
COPY example.com /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/example.com
RUN rm /etc/nginx/sites-enabled/default
docker run --name docker-nginx -p 80:80 -d -v /var/lib/jenkins/workspace/checkout\ git:/usr/share/nginx/html nginx
