from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
   '''Ruta de la página de índice'''
   return '<h1>¡Hola Mundo!</h1>'

if __name__ == '__main__':
   app.run(debug=False)

