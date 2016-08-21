.PHONY: update tail tail-errors tail-access

update:
	cp -f ./config-files/dnsmasq.conf /usr/local/etc/dnsmasq.conf
	cp -f ./config-files/nginx.conf /usr/local/etc/nginx/nginx.conf
	sudo brew services restart dnsmasq
	sudo brew services restart nginx

tail-errors tail:
	tail -f /usr/local/var/log/nginx/error.log

tail-access:
	tail -f /usr/local/var/log/nginx/access.log
