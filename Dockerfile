FROM multiarch/debian-debootstrap:amd64-stretch
RUN apt-get update && apt-get -y install transmission-daemon && apt-get clean
RUN useradd -ms /bin/bash transmission-daemon
ENV TRANSMISSION_USER usuario
ENV TRANSMISSION_PASSWORD contraseña
ENV UID 33
ENV GID 33
ADD root/ /
ENTRYPOINT /entrypoint.sh
