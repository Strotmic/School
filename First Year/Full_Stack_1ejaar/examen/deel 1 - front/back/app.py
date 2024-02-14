# Imports
import random
from flask import Flask, request, jsonify
from flask_cors import CORS


# Custom imports
from repositories.DataRepository import DataRepository

# Start app
app = Flask(__name__)
CORS(app)


ENDPOINT = '/api/v1'


# BACKEND - NIET WIJZIGEN!!
# Deze route wordt gebruikt voor het ophalen van de genres in de keuzelijst
@app.route(ENDPOINT + '/elementen/', methods=['GET'])
def get_elementen():
    '''Haal alle elementen op'''
    if request.method == 'GET':
        sql = DataRepository.read_elements()
        return jsonify(sql), 200


@app.route(ENDPOINT + '/elementen/<elementen_id>/', methods=['GET'])
def get_element(elementen_id):
    '''Haal het element op met een bepaald elementen_id'''
    if request.method == 'GET':
        sql = DataRepository.read_element_by_atomicnumber(elementen_id)
        return jsonify(sql), 200


@app.route(ENDPOINT + '/elementen/types/<type_id>/', methods=['GET'])
def get_elementen_by_type(type_id):
    '''Haal alle elemeten op met een bepaald type'''
    if request.method == 'GET':
        sql = DataRepository.read_elements_by_type(type_id)
        return jsonify(sql), 200


@app.route(ENDPOINT + '/types/', methods=['GET'])
def get_types():
    '''Haal alle types op'''
    if request.method == 'GET':
        sql = DataRepository.read_types()
        return jsonify(sql), 200


# Schrijf hier onder je code voor deel 2 - BACKEND examen <=====!!


# Start app
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5001, debug=True)
