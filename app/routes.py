from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Shams'}
    posts = [
        {
            'author': {'username': 'Reed'},
            'body': 'Beautiful day in Central Park!'
        },
        {
            'author': {'username': 'Sue'},
            'body': 'What am I, invisible?'
        }
    ]
    return render_template('index.html', title='Home', user=user, posts=posts)
