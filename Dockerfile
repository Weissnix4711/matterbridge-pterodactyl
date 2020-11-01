FROM 42wim/matterbridge

RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

RUN touch matterbridge.toml

COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/sh", "/entrypoint.sh" ]
