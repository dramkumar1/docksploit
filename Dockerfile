FROM ubuntu:14.04
COPY exploit.sh /exploit.sh
HEALTHCHECK --interval=5s --timeout=3s CMD ping --fail 8.8.8.8 || exit 1

CMD ["/bin/bash", "exploit.sh"]
