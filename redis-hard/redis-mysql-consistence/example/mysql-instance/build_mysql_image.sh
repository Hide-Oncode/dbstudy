docker build \ 
--build-arg http_proxy=http://192.168.30.116:7890 \
--build-arg https_proxy=http://192.168.30.116:7890 \
-t my_mysql .
