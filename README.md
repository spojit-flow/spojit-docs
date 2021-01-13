# Spojit documentation

## Build the base image
docker build -t squidfunk/mkdocs-material .
## Run Locally
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
## Build
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
## Deploy
docker run --rm -it -v ~/.ssh:/root/.ssh -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy