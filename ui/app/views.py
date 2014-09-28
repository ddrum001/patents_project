from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
#	user = { "name": "David" }
#	return render_template("index.html", 
#		title = 'Test',
#		user = user)
#	countries = { "USA": {code3: "USA", data: [1,2,3]} }
	return render_template("starter.html")
