# conda Docker multi-env

A Docker template for building a container that contains multiple conda env's which can be used from a workflow system such as CWL or Nextflow more easily than having multiple discrete containers.

# Usage

Build the container

```
$ make build
docker build -t 'conda-test' .
...
Successfully tagged conda-test:latest
```

Run the test

```
$ make test
docker run --rm 'conda-test' test.py
Hello Python
/usr/conda/lib/python3.9/site-packages/numpy/__init__.py
docker run --rm 'conda-test' conda run -n r --no-capture-output test.R
[1] "Hello R"
```
