FROM debian
WORKDIR /root/
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install wget -y
RUN wget -O gitea https://dl.gitea.io/gitea/1.16.9/gitea-1.16.9-linux-amd64
RUN chmod 755 /root/gitea
EXPOSE 80
CMD  ./gitea web
