# horde-composer-docker

A container image based on openSUSE Tumbleweed with the Composer-based Horde deployment from [maintaina-com/horde-deployment](https://github.com/maintaina-com/horde-deployment).
The image does not contain a web server.

The repository contains a Github Actions workflow to automatically build the container image. The workflow is triggered when changes are pushed to the repository.

## How to Use the Image

To build a another image on top of this one, use the following in your `Dockerfile`:
```Docker
FROM docker.pkg.github.com/ikselven/horde-composer-docker/horde-composer-docker:latest
```

To start a container based on this image, run:
```bash
docker run -it --name my-horde-container docker.pkg.github.com/ikselven/horde-composer-docker/horde-composer-docker:latest
```

You may need to be logged into the Github Docker Registry to pull the image, even if it's a public image.

## Further information

See [ikselven/horde-apache](https://github.com/ikselven/horde-apache) for a project that builds upon this image and adds a webserver.
