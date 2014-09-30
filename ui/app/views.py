from flask import request, render_template, jsonify
from app import app
import happybase
import json

@app.route('/')
@app.route('/index')
def index():
	city = request.args.get('city', 'Tokyo')
	date1 = request.args.get('date1', '')
	date2 = request.args.get('date2', '')
	print date1
        city_values = return_city(city)
	return render_template("starter.html", city_values=json.dumps(city_values))

@app.route('/demo')
def demo():
	city_proper_form = {"CA": {"code3": "CA", "data": [10000, 20000]},
                            "TX": {"code3": "TX", "data": [5000, 12000]}
                           }
	return render_template("demo.html", jsonData = json.dumps(city_proper_form))

def return_city(city):
	connection = happybase.Connection('54.183.64.227')
	city_table = connection.table('city_data')
	city_dict = city_table.row(city)
	city_count = city_dict['count:citycount']
#	city_proper_form = "{\"%s\": {\"%s\", [%s]} }" % ( city, city, city_count )
	city_proper_form = {"CA": {"code3": "CA", "data": [10000, 20000]} }
#	return city_table.row(city)
	return city_proper_form

