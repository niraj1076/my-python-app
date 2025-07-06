
# 🚀 Python App with Docker and Push it to Dockerhub Private Repository

This project demonstrates how to create a simple Python application, containerize it using Docker, build an image, and push it to a **private Docker Hub repository**.

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

## 🧠 About the Application

This is a basic Flask web app with two routes:

- `/` → Returns: `Python App Hosting jhala`
- `/hi` → Returns: an HTML greeting page

---

## 🧱 Step 1: Create Your Python Application

### 🔸 `app.py`

```python
from flask import Flask
import os
app = Flask(__name__)

@app.route('/')
def hello_geek():
    return 'Python App Hosting jhala'

@app.route('/hi')
def hell():
    return '<h1>Hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii from Flask & Docker</h1>'

if __name__ == "__main__":
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
```

## Step 2: Requirements File
### 🔸'requirements.txt'
```text
click==8.0.3
colorama==0.4.4
Flask==2.0.2
itsdangerous==2.0.1
Jinja2==3.0.3
MarkupSafe==2.0.1
Werkzeug==2.0.2
gunicorn==20.1.0

```


## 🛠️ Step 3: Dockerfile
### 🔸 'Dockerfile'
```Dockerfile
FROM python
WORKDIR /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
```

## Step 4: Build the Docker Image

	- docker build -t niraj1076/my-images:my-app my-python-app .
	# Here i have used the my docker hub repo-name so i don't need to tag image later. 
	# After ':' i have given my custom tag to it.
 
![build-python](https://github.com/user-attachments/assets/61b1ca85-c92c-4189-b5b0-43e101f14bd6)

## Step 5: Login to Docker Hub

	- docker login
 	# Enter your Docker Hub username and password 

## Step 6: Create a Private Repository on Docker Hub

- Go to https://hub.docker.com/
- Click Create Repository
- Name it my-images, and set it to Private

## Step 7: Push Docker Image to Private Repository

	- docker push your-username/my-images:my-app

✅ You should see upload progress and confirmation as the screenshort.

![push](https://github.com/user-attachments/assets/ccd26c36-0125-43a8-b626-f09313797304)

## Step 8: Run the Container (Test Locally)

- docker run -d -p 5000:5000 your-username/flask-app
	Then open:

	- http://localhost:5000 → Route /

	- http://localhost:5000/hi → Route /hi

## Optional Cleanup

- docker stop $(docker ps -q)
- docker rm $(docker ps -aq)
- docker image prune -f

## 📝 Author
GitHub: niraj1076

Docker Hub: niraj1076


