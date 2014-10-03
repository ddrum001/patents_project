from flask import request, render_template, jsonify
from app import app
import happybase
import json
from collections import OrderedDict

@app.route('/')
@app.route('/index')
def index():
	city = request.args.get('city', 'Tokyo')
	date1 = request.args.get('date1', '')
	date2 = request.args.get('date2', '')
	print date1
	return render_template("index.html")

@app.route('/slides')
def slides():
        return render_template("slides.html")

@app.route('/demo/pop')
def demo_pop():
        connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_yr4')
#       row = state_table.row('CA', columns=['yCt:y_2007','yCt:y_2008'])
#       print row
        state_json = {}
        for key, yearData in state_table.scan():
                print yearData['yCt:y_2007']
                years = []
#               for key2 in state_dict:
                years.append(float(yearData['yCt:y_2005'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2006'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2007'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2008'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2009'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2010'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2011'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2012'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2013'])/float(yearData['pop:p']) )
                years.append(float(yearData['yCt:y_2014'])/float(yearData['pop:p']) )
                state_json[key] = {"code3": key, "data": years}
        print state_json
        return render_template("demo2.html", jsonData = json.dumps(state_json))

@app.route('/demo')
def demo():
	connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_yr')
#	row = state_table.row('CA', columns=['yCt:y_2007','yCt:y_2008'])
#	print row
	state_json = {}
	for key, yearData in state_table.scan():
#		print yearData['yCt:y_2007']
		years = []
#		for key2 in state_dict:
		for yr in range(2005,2013):
			if yearData['yCt:y_'+str(yr)] == 'NULL':
				years.append(0)
			else:
				years.append(int(yearData['yCt:y_'+str(yr)]) )
		state_json[key] = {"code3": key, "data": years}
	print state_json
	return render_template("demo.html", jsonData = json.dumps(state_json))

