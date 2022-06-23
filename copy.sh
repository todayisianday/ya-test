cp -rp nginx.conf /etc/nginx
cp -rp nginx.service /lib/systemd/system/
rm -rf /etc/nginx/*.default
systemctl daemon-reload
systemctl start nginx
systemctl enable nginx
