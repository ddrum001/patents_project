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
	return render_template("index.html")

@app.route('/slides')
def slides():
        return render_template("slides.html")

@app.route('/pop')
def pop():
        connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_mo2')
        state_json = {}
        for key, yearData in state_table.scan():
                years = []
                for yr in range(2005,2014):
                        for mo in range(1,13):
                                dat="%d%02d" % (yr, mo)
                                if yearData['mCt:y_'+dat] == 'NULL' and dat !='201212':
                                        years.append(0)
                                elif dat != '201212':
                                        years.append(float(yearData['mCt:y_'+dat])/float(yearData['pop:p']) )
                yr = 2014
                for mo in range(1,9):
                        dat="%d%02d" % (yr, mo)
                        if yearData['mCt:y_'+dat] == 'NULL':
                                years.append(0)
                        else:
                                years.append(float(yearData['mCt:y_'+dat])/float(yearData['pop:p']) )
                state_json[key] = {"code3": key, "data": years}
        print state_json
        return render_template("per_cap_month.html", jsonData = json.dumps(state_json))

@app.route('/tech')
def tech():
        connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_t_yr')
        state_json = {}
        for key, yearData in state_table.scan():
                years = []
                for yr in range(2005,2013):
                        if yearData['yCt:y_'+str(yr)] == 'NULL':
                                years.append(0)
                        else:
                                years.append(int(yearData['yCt:y_'+str(yr)]))
                state_json[key] = {"code3": key, "data": years}
        print state_json
        return render_template("tech.html", jsonData = json.dumps(state_json))

@app.route('/techpop')
def techpop():
        connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_t_yr')
        state_json = {}
        for key, yearData in state_table.scan():
                years = []
                for yr in range(2005,2013):
                        if yearData['yCt:y_'+str(yr)] == 'NULL':
                                years.append(0)
                        else:
                                years.append(100*float(yearData['yCt:y_'+str(yr)])/float(yearData['pop:p']))
                state_json[key] = {"code3": key, "data": years}
        print state_json
        return render_template("techpop.html", jsonData = json.dumps(state_json))

@app.route('/demo')
def demo():
	connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_yr')
	state_json = {}
	for key, yearData in state_table.scan():
		years = []
		for yr in range(2005,2013):
			if yearData['yCt:y_'+str(yr)] == 'NULL':
				years.append(0)
			else:
				years.append(int(yearData['yCt:y_'+str(yr)]) )
		state_json[key] = {"code3": key, "data": years}
	print state_json
	return render_template("demo.html", jsonData = json.dumps(state_json))

@app.route('/month')
def month():
        connection = happybase.Connection('54.183.64.227')
        state_table = connection.table('st_mo')
        state_json = {}
        for key, yearData in state_table.scan():
                years = []
                for yr in range(2005,2014):
			for mo in range(1,13):
				dat="%d%02d" % (yr, mo)
	                        if yearData['mCt:y_'+dat] == 'NULL' and dat !='201212':
        	                        years.append(0)
                	        elif dat != '201212':
                        	        years.append(int(yearData['mCt:y_'+dat]) )
		yr = 2014	
		for mo in range(1,9):
			dat="%d%02d" % (yr, mo)
			if yearData['mCt:y_'+dat] == 'NULL':
				years.append(0)
			else:
				years.append(int(yearData['mCt:y_'+dat]) )
                state_json[key] = {"code3": key, "data": years}
        print state_json
        return render_template("month.html", jsonData = json.dumps(state_json))


