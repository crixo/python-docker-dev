docker build -t python-dev .

docker run --rm -ti --name flask-hello-world -p 9001:8000 -v ${PWD}:/source python-dev gunicorn -b 0.0.0.0:8000 --reload wsgi

*windows*
docker run --rm -ti --name flask-hello-world -p 9001:8000 -v C:/Users/cristiano.degiorgis/Source/RepoSamples/python-docker-dev:/source python-dev

