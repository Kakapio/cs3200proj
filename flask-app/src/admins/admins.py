from flask import Blueprint, request, jsonify, make_response, current_app, redirect, render_template, url_for
import json
from src import db

admins = Blueprint('admins', __name__)


# Add customer information to the customer table
@admins.route('/admin/add_customers', methods=['POST'])
def add_customer():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    cust_id = request.form['customer_id']
    fname = request.form['first_name']
    lname = request.form['last_name']
    email = request.form['email']
    pn = request.form['phone_number']
    str_adr = request.form['street_address']
    city = request.form['city']
    state = request.form['state']
    country = request.form['country']
    cc = request.form['credit_card']

    query = f'INSERT INTO Customers(customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) VALUES(\"{cust_id}\", \"{fname}\", \"{lname}\", \"{email}\", \"{pn}\", \"{str_adr}\", \"{city}\", \"{state}\", \"{country}\", \"{cc}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success!"


# Lookup the appointments table
@admins.route('/admin/get_appointments', methods=['GET'])
def get_appointments():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Appointments')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    data = cursor.fetchall()
    for row in data:
        json_data.append(dict(zip(row_headers, row)))
    return json_data


# Lookup the customer's table
@admins.route('/admin/get_customers', methods=['GET'])
def admin_get_customer():
    cur = db.get_db().cursor()
    cur.execute('select * from Customers')
    row_headers = [x[0] for x in cur.description]
    json_data = []
    data = cur.fetchall()
    for row in data:
        json_data.append(dict(zip(row_headers, row)))
    return json_data