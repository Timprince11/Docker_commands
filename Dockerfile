Naming convention of dockerfiles couldbe 
Dockerfile, 1.df, one.dockerfile

LABEL - about the file
ADD - Used to download content from the internet , copy or extract 

ENV - executed durning the container creation process 

CMD - Start the process inside the container (at least one process must run inside the container)  
ENTRYPOINT also like cmd, can't be used multiple times. If used ,ultiple times, only the last one will be executed. 
you can also pass the entrypoint command in a docker run command: docker run -d entrypoint echo "Hello World"..... 

==================================
To effectively use the entrypoint 
=================================== 
FROM busybox 
ENTRYPOINT ["ping"] 
CMD ["google.com"]

This lets the command ran inside the container to be "ping google.com"--- that's what will always run inside the container. 
you can also change the command via the command line: docker run -d <name of image> yahoo.com  ---- this will run "ping yahoo.com" in the container on startup.

==============================================================================

COPY copy files to the location 
WORKDIR A 
WORKDIR A/B 

ENV - gets created durning the container creation process (container creation)

ARG - gets executed when image creation process is working (image creation) 

VOLUME creates a mount point (if used twice, it will create multiple mount points in the container )  


docker rm -f $(docker ps -a -q)- to delete all running containers forcefully  
docker rmi -f $(docker images -q) - To delete images forcefuly 




