Basic NFS-Server container 
###########

To Run this container 
###

docker run --privileged  -p 111/udp -p  2049/tcp -it -d salimep/nfs-server /home/salim/docker/kick/mqshare/ /anothermountpoint
