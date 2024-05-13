#import the Flask module. 
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    #The app returns a simple message such as below
    return 'Web App with Python Flask!'

#The Flask web app runs on localhost and post 5000 on the container
app.run(host='0.0.0.0', port=5000)