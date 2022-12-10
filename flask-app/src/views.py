from flask import Blueprint, render_template

views = Blueprint('views', __name__)

# This is a base route
# we simply return a string.  
@views.route('/')
def home():
    return render_template('index.html')

@views.route('/admin')
def get_admin():
    return render_template('admin.html')

@views.route('/appointments')
def get_appointments():
    return """<table>
  <tr>
    <th>Time Slot</th>
    <th>Service</th>
    <th>Employee</th>
  </tr>
  <tr>
    <td>9/1/22 10:30 AM</td>
    <td>Color</td>
    <td>Katie Li</td>
  </tr>
  <tr>
    <td>9/3/22 12:30 PM</td>
    <td>Color</td>
    <td>Mary Smith</td>
  </tr>
    <tr>
    <td>9/3/22 12:30 PM</td>
    <td>Color</td>
    <td>Mary Smith</td>
  </tr>
</table>"""