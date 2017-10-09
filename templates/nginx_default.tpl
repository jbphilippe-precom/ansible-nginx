server {
 {% if nginx_listen_port is defined %}
 listen {{ nginx_listen_port }} default_server;
 {% else %}
 listen 80 default_server;
 {% endif %}
 server_name _;
 location / {
  rewrite ^/(.*)$ http://www.pagesjaunes.fr permanent;
 }
}
