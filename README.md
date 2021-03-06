# docker-registry-arm
Repo for building a docker registry image for arm devices. Specifically the Raspberry Pi, although this should honestly work on any architecture that is supported by the golang docker image if you run the build command.

The arm image is already hosted on the Docker Hub [here](https://hub.docker.com/r/bentastic27/registry-arm).

I created this as another registry project was no longer maintained and was using version 1 of registry.

# common commands

This is generally how I'd run it:

```
docker run -d -p 5000:5000 --restart=always --name registry --volume registry:/var/lib/registry --env REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io bentastic27/registry-arm:latest
```

The options should match the [official documentation](https://docs.docker.com/registry/deploying/).
