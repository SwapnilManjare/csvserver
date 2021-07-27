#Run the below commands to pull the infracloud and Prometheus Image.

docker pull infracloudio/csvserver:latest
docker pull prom/prometheus:v2.22.0



#Run the below Command to run the infracloud container.

docker run -d -v /home/swapnil/csvserver/inputdata:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest



- In the above command the gencsv.sh scripts the required inputdata file. Now we need to make this file accessible inside of the Contianer hence we us  e the -v option to mount the file from our localhost to the directory inside the container.
- The application inside the container runs on port 9300, however inorder to make it accessible on the host we use the port forwarding flag -p.
  Here host port 9393 is mapped with port9300 of the container.
- Inorder to pass any environment variable we use the flag -e.


***********************************************************************************
Additional Commands
***********************************************************************************

#Command to list the images

docker images



#Command to stop the container

docker stop <container-id>



#Command to delete the exited containers

docker rm <container-id>



#Command to list all the running containers.

docker ps



#Command to list all the running and exited containers.

docker ps -a


