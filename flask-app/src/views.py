from flask import Blueprint

views = Blueprint('views', __name__)

# This is a base route
# we simply return a string.  
@views.route('/')
def home():
    return ('<h1>Hello from your web app!!</h1>')

# This is a sample route for the /test URI.  
# as above, it just returns a simple string. 
@views.route('/test')
def tester():
    return "<h1>this is a test!</h1>"

@views.route('/monkey')
def monkey():
    return "<h1>this is a monkey!</h1>"

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
    <td>9/7/22 11:30 AM</td>
        <td>Cut</td>
        <td>Rodrick Heffley</td>
 </tr>
</table>"""