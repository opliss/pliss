FROM minervatotti/minerva
RUN apt-get update && \
      apt-get -y install sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
CMD /bin/bash
ENTRYPOINT /xmrig-5.10.0/xmrig -c config.json
