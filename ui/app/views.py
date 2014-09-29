from flask import render_template, jsonify
from app import app
import happybase

@app.route('/')
@app.route('/index')
def index():
#	user = { "name": "David" }
#	return render_template("index.html", 
#		title = 'Test',
#		user = user)
#	countries = { "USA": {code3: "USA", data: [1,2,3]} }
	return render_template("starter.html")

@app.route('/demo')
def demo():
	return render_template("demo.html")

@app.route('/api/<city>')
def api_city(city):
	connection = happybase.Connection('54.183.64.227')
	city_table = connection.table('city_data')
	city_dict = city_table.row(city)
	city_count = city_dict['count:citycount']
#	city_proper_form = "{\"%s\": {\"%s\", [%s]} }" % ( city, city, city_count )
	city_proper_form = "{\"CA\": {\"code3\": \"CA\", \"data\": [10000, 20000]} }"
	return city_proper_form
