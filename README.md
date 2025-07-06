
# 🚀 Dockerized python app

This is a python app that run in docker conatiner. It uses flask to create a basic web server.

Project Structure

my-python-app/
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md


## 🧾 Prerequisites

- Docker installed
- Git installed
- A GitHub account

## 🛠️ Dockerfile


FROM python
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
COPY ./app.py /app/app.py
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]

## To build the image from the docker file 

	- docker build -t <give-image-name> my-python-app .

