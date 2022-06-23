apt update
apt install libpcre3 libpcre3-dev build-essential libtool zlib1g-dev openssl libssl-dev -y

./configure --prefix=/etc/nginx \
            --sbin-path=/usr/sbin \
	    --conf-path=/etc/nginx/nginx.conf \
	    --http-log-path=/var/log/nginx/access.log \
	    --error-log-path=/var/log/nginx/error.log \
	    --pid-path=/var/run/nginx.pid \
            --with-http_ssl_module \
	    --with-http_stub_status_module \
	    --add-module=./modules/nginx-rtmp-module \
	    --add-module=./modules/nginx-client-module \
	    --add-module=./modules/nginx-multiport-module \
	    --add-module=./modules/nginx-toolkit-module

