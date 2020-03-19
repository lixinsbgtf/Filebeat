#FROM elastic/filebeat:6.3.0
FROM elastic/filebeat:7.6.1
COPY Entrypoint.sh /etc/
COPY filebeat_search_store_xc.yml /etc/
COPY filebeat_ts_app.yml /etc/
COPY filebeat_ts_web.yml /etc/
USER root
ENTRYPOINT ["/etc/Entrypoint.sh"]
