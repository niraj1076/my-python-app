
# 🚀 Dockerized python app

This is a python app that run in docker conatiner. It uses flask to create a basic web server.

Project Structure

my-python-app/
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md


## 🧾 Prerequisites

- EC2 server
- Docker installed in that EC2 server
- Git installed
- A GitHub account

## 🛠️ Dockerfile


## To build the image from the docker file 

	- docker build -t niraj1076/my-images:my-app my-python-app .
	# Here i have used the my docker hub repo-name so i don't need to tag image later. 
	# After ':' i have given my custom tag to it.
 
![build-python](https://github.com/user-attachments/assets/61b1ca85-c92c-4189-b5b0-43e101f14bd6)

## Run the Container

	- docker run -d -p 5000:5000 --name py-app niraj1076/my-images:my-app


![run](https://github.com/user-attachments/assets/06cc9c2d-8c73-4ed3-a36c-c19f1941af5c)


## View the App
Open your browser and go to:

	- http://ec
