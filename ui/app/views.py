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
	return render_template("index.html", city_values=json.dumps(city_values))

@app.route('/slides')
def slides():
        return render_template("slides.html")

@app.route('/demo')
def demo():
	connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('stateYearTotal')
	state_json = {}
	for key, yearData in state_table.scan():
		state_dict = yearData
		years = []
		for key2 in state_dict:
			years.append(int(state_dict[key2]) )
		state_json[key] = {"code3": key, "data": years}
	return render_template("demo.html", jsonData = json.dumps(state_json))

def return_city(city):
	connection = happybase.Connection('54.183.64.227')
	city_table = connection.table('city_data')
	city_dict = city_table.row(city)
	city_count = city_dict['count:citycount']
	return city_proper_form

