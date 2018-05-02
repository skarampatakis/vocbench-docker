# vocbench v3 Docker image

To build the image run
```
docker build -t vocbench .
```

Then you can run a container by running
```
docker run -p 1979:1979 -d vocbench
```

You can access the VocBench instance at localhost:1979/vocbench3
