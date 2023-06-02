Naming convention of dockerfiles couldbe 
Dockerfile, 1.df, one.dockerfile

LABEL - about the file
ADD - Used to download content from the internet , copy or extract  
      can copy a directory, URL file and compressed file (adv version of COPY) 

ENV - executed durning the container creation process 

CMD - Start the process inside the container (at least one process must run inside the container) * A process not a command. 
      most of the linux distro base images found on Docker Hub will usse a shell like /bin/sh or /bin/bash as the 
      CMD executable.
ENTRYPOINT also like cmd, can't be used multiple times. If used ,ultiple times, only the last one will be executed. 
you can also pass the entrypoint command in a docker run command: docker run -d entrypoint echo "Hello World".....  

Using a command in this format, you can overwrite an ENTRYPOINT command 
docker run --entrypoint google.com demo. * using the --entrypoint. 

CMD and ENTRYPOINT can be overwritten from the command line when starting up a container (There can only be one CMD
instruction in a Dockerfile)  

Best to start a CMD command using the exec form so it starts as the primary process. 
==================================
To effectively use the entrypoint 
=================================== 
FROM busybox 
ENTRYPOINT ["ping"] 
CMD ["google.com"]

This lets the command ran inside the container to be "ping google.com"--- that's what will always run inside the container. 
you can also change the command via the command line: docker run -d <name of image> yahoo.com  ---- this will run "ping yahoo.com" in the container on startup.

==============================================================================

================testimage
FROM centos:7

ENTRYPOINT ["yum", "install","-y"] 

CMD ["httpd"] 

if we run the command: docker run -d --name=c9 testimage tree maven... It will only install tree and mave as it would overwrite the httpd in the cmd command
===================

COPY copy files to the location  
     if you are copying a shell script, make sure it has an executable permission
WORKDIR A 
WORKDIR A/B 

ENV - gets created durning the container creation process (container creation)

ARG - gets executed when image creation process is working (image creation) 

VOLUME creates a mount point (if used twice, it will create multiple mount points in the container )  e 
       eg. VOLUME ["/data"]

DISTROLESS IMAGES
READ: https://github.com/GoogleContainerTools/distroless


docker rm -f $(docker ps -a -q)- to delete all running containers forcefully  
docker rmi -f $(docker images -q) - To delete images forcefuly 

To build a docker image from github 
docker build -t <name of image> <github url(with files containing the dockerfile> 

ONBUILD ENTRYPOINT -- Used to give instructions on how to use the image created. 

ADD Copies new files, directories or remote file URLs from <src> 

USER  Sets the Username (or UID) and optionally the user group (or GID) to use when running the  
      image and for any RUN, CMD and ENTRYPOINT instructions that follow itin the Dockerfile.  
      USER <usuer>[:<group>] 






