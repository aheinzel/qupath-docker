# QuPath Docker

Docker image with QuPath v0.5.0.

## Build image
```
git clone "git@github.com:aheinzel/qupath-docker.git"
cd qupath-docker
docker build -t aheinzel/qupath .
```

## Run container
```
docker run \
   -it \
   --rm \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -v XXX:/work \
   aheinzel/qupath
```
**replace XXX with the path to the local folder you want to make available within the container**
