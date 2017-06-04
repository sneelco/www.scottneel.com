from fedora:latest

RUN dnf update -y
RUN dnf install nodejs npm git -y
RUN useradd -M -d /blog blog; \
    npm install -g hexo-cli; \
    cd /; \
    hexo init blog

WORKDIR /blog

USER blog
ENV HOME=/blog
EXPOSE 4000

ENTRYPOINT ["/usr/bin/hexo"]
CMD ["server"]
