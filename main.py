"""
Creating a web application using flask that displays the IP of the
person when they connect to the website. This could be very useful
but also dangerous if not properly secured.
"""
from flask import Flask, render_template
from flask import request


sample = Flask(__name__)
# creating an instance of Flask class called sample


@sample.route("/")
# This says when you vist the root dir of the webhost run the code


def main():
    return render_template('index.htm')
    # use flask to render the index.htm file to make it look fancy


if __name__ == "__main__":
    sample.run(host='0.0.0.0', port=8081)
    # run the main function on 0.0.0.0 port 8080 when
    # if this file is run as main.

