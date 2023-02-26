# comment
# base or source image that you can pull locally or from the hub:
FROM python:3.7.2-slim

# copy files to the file system of the image
COPY . /app
# defines working dir for other dockerfile commands
WORKDIR /app

# run shell commands set up the environment for main app in the image
RUN pip install --upgrade pip
RUN pip install flask

# define the exe that defines the image
ENTRYPOINT [ "python","app.py" ]