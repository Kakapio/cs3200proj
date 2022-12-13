from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

owner = Blueprint('owner', __name__)


# Login Page for admin and owner
@owner.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        json_response = []
        if request.form['username'] == 'teamquattro_owner' and request.form['password'] == 'quattropass':
            json_response.append("success_owner")
        elif request.form['username'] == 'teamquattro_admin' and request.form['password'] == 'quattropass':
            json_response.append("success_admin")
        else:
            json_response.append("failure")

        return json_response


# Add employee information to the table
@owner.route('/owner/add_employees', methods=['POST'])
def add_employee():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    emp_id = request.form['employee_id']
    fname = request.form['first_name']
    lname = request.form['last_name']
    email = request.form['email']
    pn = request.form['phone_number']

    query = f'INSERT INTO Employees(employee_id, first_name, last_name, email, phone_number) VALUES(\"{emp_id}\", \"{fname}\", \"{lname}\", \"{email}\", \"{pn}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success!"


# Get all employee info
@owner.route('/owner/get_employees', methods=['GET'])
def get_employee_data():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Employees')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    Data = cursor.fetchall()
    for row in Data:
        json_data.append(dict(zip(row_headers, row)))
    return json_data


# Get all invoices info
@owner.route('/owner/get_invoices', methods=['GET'])
def get_invoice_data():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Invoices')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    Data = cursor.fetchall()
    for row in Data:
        json_data.append(dict(zip(row_headers, row)))
    return json_data