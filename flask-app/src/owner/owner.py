from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

owner = Blueprint('owner', __name__)


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