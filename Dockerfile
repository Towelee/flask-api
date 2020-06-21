FROM python:3.7

#run in virtualenv -- best practice?
#RUN pip install virtualenv
#ENV VIRTUAL_ENV=/VIRTUAL_ENVRUN virtuaenv venv -p python3
#ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /app
ADD . /app

# Install dependencies:
RUN pip install -r requirements.txt

# RUN application:
CMD ["python", "app.py", "--host=0.0.0.0"] ]


# in terminal:

### builds 'docapp' image and tags it 'v1'
# docker build -t docapp:v1 .

### run container
# docker container run -d -p5000:5000 docapp:v1
