FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install firefox \
                       dbus-x11 \
                       libcanberra-gtk-module \
                       libcanberra-gtk3-module \
                       language-pack-ja \
                       fonts-noto \
                       fonts-noto-cjk \
                       fonts-noto-color-emoji \
                       pulseaudio

RUN useradd user -m -u 1000
USER user
WORKDIR $HOME

ENTRYPOINT "firefox"
