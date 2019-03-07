from flask import render_template
from fioriapp.app import create_app

app = create_app()

@app.route('/', methods=['GET', 'POST'])
def index():

    return render_template("index.html")

