FROM ghcr.io/sagernet/sing-box:latest
COPY gen_config.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/gen_config.sh
RUN mkdir -p /etc/singbox
RUN /usr/local/bin/gen_config.sh > /etc/singbox/config.json
CMD ["run", "-c", "/etc/singbox/config.json"]
