from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World from app engine std'

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8081, debug=True)