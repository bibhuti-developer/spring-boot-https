# view docker version
# --------------
# C\:> docker -v

# view docker images
# -------------
# C\:> docker images

# build docker image 
# -f -> docker file
# -t -> tag name
# ------------------
# C\:> docker build -f Dockerfile -t docker-image-name .

# run docker image
# -p -> push and map to port
# ----------------
# C\:> docker run -p 8445:8445 docker-image-name

FROM openjdk:8
ADD target/spring-boot-https-1.0-SNAPSHOT.jar spring-boot-https-1.0-SNAPSHOT.jar
EXPOSE 8445
ENTRYPOINT ["java", "-jar", "spring-boot-https-1.0-SNAPSHOT.jar"]