from repositories.DataRepository import DataRepository
from flask import Flask, jsonify, request
from flask_socketio import SocketIO, emit
from flask_cors import CORS

import time
import threading
import random

endpoint = "/api/v1"


app = Flask(__name__)
app.config['SECRET_KEY'] = 'Hier mag je om het even wat schrijven, zolang het maar geheim blijft en een string is'

socketio = SocketIO(app, cors_allowed_origins="*",
                    ping_timeout=1, ping_interval=1)
CORS(app)


def start_activiteit():
    personen = ["Marc", "Pauline", "Marie", "Mehmed", "Johan"]
    taken = ["een wandeling", "een fietstocht",
             "paaldansen", "taartjes eten", "fierljeppen"]

    socketio.emit('B2F_activiteit', {
        'boodschap': f"{personen[random.randint(0,4)]} is begonnen met {taken[random.randint(0,4)]}."})
    print("Ik verstuur een boodschap naar mijn clients")
    time.sleep(3)
    start_activiteit()


# Haal het volgende commentaarteken weg om de socketiocall te starten
# threading.Timer(3, start_activiteit).start()


@app.route('/')
def hallo():
    ''' Deze route is deel van het frontend gedeelte van het examen.
        Deze mag je niet wijzigen tijdens het frontend gedeelte van het examen.'''
    return "Server is running, er zijn momenteel geen API endpoints beschikbaar."


@app.route(endpoint + '/categories/', methods=['GET', 'POST'])
def get_categories():
    ''' Deze route is deel van het frontend gedeelte van het examen.
        Deze mag je niet wijzigen tijdens het frontend gedeelte van het examen.'''
    if request.method == 'GET':
        data = DataRepository.read_categories()
        return jsonify(categories=data), 200

    elif request.method == 'POST':
        x = DataRepository.json_or_formdata(request)
        print(x)
        data = DataRepository.add_categorie(
            x["naam"],
            x["eenheid"],
            x["image"],
            x["ondertitel"],
            x["klasse"],
            x["totaal"]
        )
        return jsonify(id=data)


@app.route(endpoint + '/categories/<cat_id>/', methods=['GET', 'PUT'])
def get_one_categorie(cat_id):
    if request.method == 'GET':
        data = DataRepository.read_categorie(cat_id)
        return jsonify(cat_id=cat_id, data=data)
    elif request.method == 'PUT':
        x = DataRepository.json_or_formdata(request)
        print(x)
        if (x['totaal'] == 'AVG' or x['totaal'] == 'SUM'):
            try:
                DataRepository.update_categorie(
                    x['naam'],
                    x['eenheid'],
                    x['totaal'],
                    cat_id
                )
                return jsonify(aantal_aanpassingen=1)
            except KeyError as e:
                return jsonify(boodschap='Waarde niet aangepast of niet gevonden')
        else:
            return jsonify(boodschap='Ongeldige waarde voor totaal, enkel AVG of SUM')


@app.route(endpoint + '/categories/<cat_id>/data/', methods=['GET', 'DELETE'])
def get_data_categorie(cat_id):
    ''' Deze route is deel van het frontend gedeelte van het examen.
        Deze mag je niet wijzigen tijdens het frontend gedeelte van het examen.'''
    if request.method == 'GET':
        data = DataRepository.read_data(cat_id)
        return jsonify(details=data), 200
    elif request.method == 'DELETE':
        payload = DataRepository.json_or_formdata(request)
        datum = payload['datum']
        data = DataRepository.delete_data(datum, cat_id)
        return jsonify(details=data), 200
    else:
        return jsonify(error="Method not allowed."), 405

# Deze socketio endpoint is deel van het frontend gedeelte van het examen.
# Deze mag je niet wijzigen tijdens het frontend gedeelte van het examen.


@socketio.on('connect')
def initial_connection():
    print('A new client connect')


@socketio.on('F2B_start_wandeling')
def test(t, x):
    print('ok')
    socketio.emit('B2_info', {"gebruiker": "Dieter", "stad": "Kortrijk"})


if __name__ == '__main__':
    socketio.run(app, debug=True, host='0.0.0.0', port=5001)
