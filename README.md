# PredictMe

I chose a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The datah was initially taken from Kaggle, on the data source site. This project is to operationalize a Python flask app— [app.py](./app.py), that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Environment Setup

1. Install **Pip3** and **Python3**
2. Run **MakeFile** to install all necessary python packages.
``` bash
make install
```
3. Install other libraries
    * Docker
    > Create a [Docker account](https://hub.docker.com/signup) with **unique Docker ID as username**  

    > Install docker from [Docker's Offical page](https://docs.docker.com/get-docker/)
    * Kubernets (Minikube)
    > Install [brew](https://brew.sh/)

    > Install **VirtualBox**
    ```bash
    brew cask install virtualbox
    ```
    > Install **Minikube**
    ```bash
    brew cask install minikube
    ```
    * Hadolint
    > Install **hadolint**
    ```bash
    brew install hadolint 
    ```
    > Run make lint to check lint errors
    ```bash
    make lint
    ``` 
    > Output
    ```bash
    ------------------------------------
    Your code has been rated at 10.00/10
    ``` 

## Project Tasks
1. Docker
    > Create a Dockerfile which includes
    * Step 1 : Create a working directory
    * Step 2 : Copy source directory **app.py** to this working directory
    * Step 3 : Run Lint
    * Step 4 : Expose on port 80
    * Step 5 : Run the command **python app.py** 

    > Run the dockerfile **run_docker.sh**
    * step 1 : Build a docker python image 
    * Step 2 : Run the flask app on docker image

    > Run the **make_predictions.sh** to see the output of the predictions in json format. 

    > Output 
    ```bash 
    Port: 8000
    {
    "prediction": [
        20.35373177134412
    ]
    }
    ```
    > To save the log output, copy the terminal output into **docker_output.txt** file.

    > Upload the Docker Image through **upload_docker.sh**
    * Step 1 : Create a Docker Hub path variable
    * Step 2 : Authenticate and login 
    * Step 3 : Push Image to Dcoker repo

    > Run
    ```bash
    ./upload_docker.sh
    ```
2. Kubernets
    > Start the minikube server
    ```bash
    minikube start
    ```
    > Create a **run_kubernets.sh** file which is same as docker.
    * Step 1 : 
