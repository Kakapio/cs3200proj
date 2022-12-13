from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

customers = Blueprint('customers', __name__)


# Get all customers data from the DB
@customers.route('/customers', methods=['GET'])
def get_customers():
    json_data = get_customer_data()
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


def get_customer_data():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Customers')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    return json_data


# let customer add appointment details
@customers.route('/customers/add_appointment', methods=['POST'])
def add_employee():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    emp_id = request.form['employee_id']
    appoint_date = request.form['time_slot']
    service_type = request.form['appointment_type']

    query = f'INSERT INTO Appointments(employee_id, time_slot, appointment_type) VALUES(\"{emp_id}\", \"{appoint_date}\", \"{service_type}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success!"


# get a table consisting of employee ID and their names
@customers.route('/customers/empID_info', methods=['GET'])
def get_empID_data():
    cursor = db.get_db().cursor()
    cursor.execute('select employee_ID, first_name, last_name from Employees')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# Get simplified Employee details - Name and Phone number
@customers.route('/customers/employee_data', methods=['GET'])
def get_restricted_emp_data():
    cursor = db.get_db().cursor()
    cursor.execute('select first_name, last_name, phone_number from Employees')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    Data = cursor.fetchall()
    for row in Data:
        json_data.append(dict(zip(row_headers, row)))
    return json_data