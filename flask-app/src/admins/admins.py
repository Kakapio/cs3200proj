from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

admins = Blueprint('admins', __name__)


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