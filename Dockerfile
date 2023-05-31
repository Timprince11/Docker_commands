Naming convention of dockerfiles couldbe 
Dockerfile, 1.df, one.dockerfile

LABEL - about the file
ADD - Used to download content from the internet , copy or extract 

ENV - executed durning the container creation process 

CMD - Start the process inside the container (at least one process must run inside the container)  
ENTRYPOINT also like cmd, can't be used multiple times. If used ,ultiple times, only the last one will be executed.
COPY copy files to the location 
WORKDIR A 
WORKDIR A/B 

ENV - gets created durning the container creation process (container creation)

ARG - gets executed when image creation process is working (image creation) 

VOLUME creates a mount point (if used twice, it will create multiple mount points in the container )  


docker rm -f $(docker ps -a -q)- to delete all running containers forcefully  
docker rmi -f $(docker images -q) - To delete images forcefuly 




