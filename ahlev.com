server{
  listen 80;
  location / {
    proxy_pass http://127.0.0.1:9701/;
    include proxy_params;
  }
}