FROM httpd:2.4

COPY ["server.crt", "server.key", "httpd.conf", "/usr/local/apache2/conf/"]
COPY ["httpd-ssl.conf", "/usr/local/apache2/conf//extra/"]

RUN sed -i \
		-e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
		-e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
		-e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
		conf/httpd.conf