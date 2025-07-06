FROM python
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
COPY ./app.py /app/app.py
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
