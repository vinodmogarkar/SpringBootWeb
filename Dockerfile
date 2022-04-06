FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/SpringBootWeb.war  /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]


# docker build -t yourusername/example-node-app
# docker build -t springbootweb  .

# docker container run -p 8080:80 [docker_image]
# docker run -i -t -d -p 8080:8080 springbootweb

# =======  For AWS  ========= 
# docker build -t docker .

# docker tag docker:latest public.ecr.aws/j0f1a3f0/docker:latest

# docker push public.ecr.aws/j0f1a3f0/docker:latest

# aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j0f1a3f0
