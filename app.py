from bottle import route, run, template

@route('/')
def index(): return '<a href="/hello/whatever">Hello!</a>'

@route('/hello/<name>')
def hello(name): return template('<b>Hello {{name}}</b>!', name=name)

if __name__=='__main__':run(host='localhost', port=8080)
