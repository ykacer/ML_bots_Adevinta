#!/bin/bash
PORT=8007
IMAGE_NAME="continuumio/anaconda3"
CONTAINER_NAME="anaconda3"
KAGGLE_FOLDER=`pwd`


sudo docker run -it -p $PORT:8888 \
	--name $CONTAINER_NAME \
	-v $KAGGLE_FOLDER:/root \
	$IMAGE_NAME \
        /bin/bash -c "pip install kaggle;  mkdir /opt/notebooks && jupyter notebook --notebook-dir=/root --ip='*' --port=8888 --allow-root --no-browser --NotebookApp.token='' --NotebookApp.password=''"

