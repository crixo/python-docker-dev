from flask import Flask
application = Flask(__name__)

@application.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There ss</h1>"

@application.route("/hello")
def hello2():
    return "<h1 style='color:blue'>Hello There!</h1>"

@application.route("/test3")
def test():
    return "<h1 style='color:blue'>Test3 upd2!</h1>"

if __name__ == "__main__":
    application.run(host='0.0.0.0')
