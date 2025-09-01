#!/usr/bin/env python3

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    print(" Service is running successfully.")
    return "Hello world!."

if __name__ == '__main__':
    print("You can access the service at: http://localhost:5000")
    app.run(host='0.0.0.0', port=5000)
