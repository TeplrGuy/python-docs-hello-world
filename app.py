from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    while(1):
        str = "" + "woot"
    return "Hello, I am Gilbert!"
