
from simplex.rpc_requests import RequestsAPI

api = RequestsAPI()
api.prefixUri = 'http://localhost:8080'

x = api.rpc_hello_world_get()
print 'x', x.status_code
print 'x', x.content
print 'x', x.json()

x = api.rpc_x_y_z_get("1",2.1,4,3)
print 'x', x.status_code
print 'x', x.content
print 'x', x.json()
