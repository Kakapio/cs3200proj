from flask import Blueprint, render_template, request, redirect, url_for
from src.customers import customers  # TODO: fix this import to work

views = Blueprint('views', __name__)


# TODO: add booking for appointments
@views.route('/', methods=['GET', 'POST'])
def home():
    error = None
    if request.method == 'POST':
        if request.form['username'] != 'admin' or request.form['password'] != 'admin':
            error = 'Invalid Credentials. Try admin as your user and pass'
        else:
            return redirect(url_for('views.get_admin'))
    return render_template('index.html', error=error)


@views.route('/admin')
def get_admin():
    return render_template('admin.html')


@views.route('/appointmentview')
def get_appointments():
    return render_template('appointments.html')


@views.route('/customerview')
def get_customersview():
    data = customers.get_customer_data()  # TODO: add customer data from here
    return render_template('customers.html', data=data)
