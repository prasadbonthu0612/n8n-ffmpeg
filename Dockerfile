FROM n8nio/n8n

USER root

# Install ffmpeg manually (static build)
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz \
    && tar -xvf ffmpeg-release-amd64-static.tar.xz \
    && cp ffmpeg-*-amd64-static/ffmpeg /usr/local/bin/ \
    && cp ffmpeg-*-amd64-static/ffprobe /usr/local/bin/ \
    && rm -rf ffmpeg-*

USER node
