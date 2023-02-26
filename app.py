from flask import Flask

app = Flask(__name__)
app.app_context().push()

@app.route('/')
def hello_world():
    return "Helloooo worldd. From Flask.."

if __name__ == '__main__':
   app.debug=True 
   app.run(host="0.0.0.0", port=5641)