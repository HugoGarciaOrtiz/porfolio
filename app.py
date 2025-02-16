from flask import Flask, render_template

app = Flask(__name__)

# Ruta principal para mostrar la página web
@app.route('/')
def home():
    return render_template('about.html')

# Puedes agregar más rutas si tienes más páginas
@app.route('/about')
def about():
    return render_template('about.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
