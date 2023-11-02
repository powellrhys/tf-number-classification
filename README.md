# tf-number-classification

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

The following repo contains the code for a image number classification model powered by [tensorflow](https://www.tensorflow.org/) and visualised by [streamlit](https://streamlit.io/).

The application can be visualised by cloning and running the code locally or by pulling and running the latest container.

### Local clone and run

To run the code locally, first train the model by running the following command fromt he root:

`python train_model.py`

Once the model has been trained, execute the following command to run the frontend:

`python app.py`

### Pull and run container

To pull the latest version of the container, execute the latest command:

`docker pull ghcr.io/powellrhys/tf-number-classification:latest`

Once pulled, run the container using the following command:

`docker run -p 8501:8501 ghcr.io/powellrhys/tf-number-classification:latest`

### Interacting with the fronend

Using the images from the sample inputs directory, upload an image and watch the model predict the input
