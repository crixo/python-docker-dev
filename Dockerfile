FROM python:3.7.2-alpine3.9
WORKDIR /app
COPY requirements.txt requirements.txt
#RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt
#RUN pip install gunicorn
WORKDIR /source
VOLUME /source
#CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "app:hello"
CMD gunicorn -b 0.0.0.0:8000 --reload wsgi

