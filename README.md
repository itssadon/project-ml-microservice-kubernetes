
# Operationalizing a Machine Learning Microservice API
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/itssadon/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/itssadon/project-ml-microservice-kubernetes/tree/main)

## Project Overview

In this project, I have applied the skills I have acquired in the course to operationalize a Machine Learning Microservice API. 

The Operationalize ML project contains a Machine Learning Microservice, built on **Scikit-Learn**. It contains a model that predicts house prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

---

## What does this project do?

- Run a docker container
- Upload container into a public registry (hub.docker.com)
- Run the deployed application in a Kubernetes cluster
- Integrate with CircleCI for continuous integration
  
---

## Requirements

- Python 3.7.x
- Docker
- Hadolint
- Kubernetes (Minikube)

---

## Start here

### Get the source code

* Fork this repo and clone it to your local workstation (obviously).
```bash
git clone https://github.com/itssadon/project-ml-microservice-kubernetes.git
```

* Change directory to the project root
```bash
cd project-ml-microservice-kubernetes
```

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
make setup
```

### Install dependencies

* Run `make install` to install the necessary dependencies
```bash
make install
```

* (Optionally) Lint application (requires hadolint)
```bash
make lint
```

### Run Docker container
- Run the application on docker by calling `./run_docker.sh`
```bash
./run_docker.sh
```

### Upload to Docker Hub
- In the `./upload_docker.sh` file, edit the dockerpath (line 8) and change the docker username to a personalized one (or leave it as is, to use the public itssadon/project-ml-k8s:v1.0.0)
- To upload to docker hub, run `./upload_docker.sh`
```bash
./upload_docker.sh
```

### Step 4: Kubernetes deployment
- To deploy to kubernetes, run `./run_kubernetes.sh`
```bash
./run_kubernetes.sh
```

---
