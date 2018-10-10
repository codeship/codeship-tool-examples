FROM elasticsearch:6.4.1

COPY elasticsearch-healthcheck /usr/local/bin/

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s CMD ["elasticsearch-healthcheck"]
