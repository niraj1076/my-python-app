
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


## 🛠️ Dockerfile - Use the file provide.


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
