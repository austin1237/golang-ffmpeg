FROM golang:1.10
RUN apt-get update

#Install ffmpeg
RUN apt-get install xz-utils
RUN mkdir /usr/local/bin/ffmpeg
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz -P /usr/local/bin/ffmpeg
RUN tar xf /usr/local/bin/ffmpeg/ffmpeg-release-64bit-static.tar.xz -C /usr/local/bin/ffmpeg
RUN mv  -v /usr/local/bin/ffmpeg/ffmpeg-4.1-64bit-static/* /usr/local/bin/ffmpeg/

RUN ln -s /usr/local/bin/ffmpeg/ffmpeg /usr/bin/ffmpeg
RUN ln -s /usr/local/bin/ffmpeg/ffprobe /usr/bin/ffprobe