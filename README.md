# Amazon ECS PHP bare php project (wip)
Directions on how to launch this sample app on Amazon ECS can be found in the documentation: [Docker basics](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html).

# Local setup

## Create docker image
docker build -t local-wordpress-image .

## Run the newly built image. 
The -p 80:80 option maps the exposed port 80 on the container to port 80 on the host system. For more information about docker run, go to the Docker run reference.

docker run -p 80:80 local-wordpress-image

Open a browser and point to the server that is running Docker and hosting your container.

If you are using boot2docker on a Windows or Mac computer, find the IP address of the VirtualBox VM that is hosting Docker with the boot2docker ip command.

example:
$ boot2docker ip
192.168.59.103
