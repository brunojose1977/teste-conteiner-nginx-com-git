FROM nginx
COPY repositorios-necessarios-git.list /etc/apt/sources.list
COPY my-nginx-container-bootstrap.sh my-nginx-container-bootstrap.sh
RUN chmod +x my-nginx-container-bootstrap.sh
ADD my-nginx-container-bootstrap.sh /
ENTRYPOINT ["/bin/bash", "/my-nginx-container-bootstrap.sh"]
