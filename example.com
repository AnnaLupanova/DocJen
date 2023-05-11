server {
              
        listen 80;
        server_name example.com;
	root /home/anna/DocJen;
	index index.html index.htm index.nginx-debian.html;
	access_log            /var/log/nginx/jenkins.access.log;
        error_log             /var/log/nginx/jenkins.error.log;
	location / {
                try_files $uri $uri/ =404;
        }        
        }
