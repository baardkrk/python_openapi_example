# Python API Docker example

This is an example of hosting a openAPI for a python app running as a Docker container.
To run the docker container use:

```
$ docker pull python:3.8.6-slim
$ docker build --tag python_open_api:1.0
$ docker run --publish 8000:8080 --detach --name pyapi python_open_api:1.0
```

The api can now be reached at `localhost:8000/api/ui`, while the hello-world webpage is hosted at `localhost:8000/`. To see the logs, and remove the container use:

```
$ docker logs pyapi
$ docker rm --force pyapi
```
