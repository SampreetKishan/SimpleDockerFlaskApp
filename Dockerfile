#Initilaize the container with the latest python alpine base image
FROM python:3.13.0b1-alpine

#Set a working directory
WORKDIR /app

#Copy the contents of the existing directory on your local computer to the working directory within the app
COPY . /app

#Update the repository of the alpine container. 
RUN apk update

#rup pip to install all the dependencies of the flask app. Preferrable to use the latest Flask app.
RUN pip install -r requirements.txt

#define the command to start the container
CMD ["python", "webapp.py"]
