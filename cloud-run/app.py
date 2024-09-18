from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, this is a Flask app running inside Docker!'
@app.route('/greet')
def greet():
    return 'Hi.. Hope you are doing well'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

