
from django.shortcuts import render
import requests

def index_product(request):
    print('Retornar pagina productos.html')
    api_url = "https://mindicador.cl/api"
    response = requests.get(api_url)
    print('status_code -> {0}'.format(response.status_code))
    json_request = response.json()
    print('json_request -> {0}'.format(json_request))
    
    api_datos = {
        'dolar':{
            'valor': json_request['dolar']['valor'],
            'fecha': json_request['dolar']['fecha']
        },
        'uf':{
            'valor': json_request['uf']['valor'],
            'fecha': json_request['uf']['fecha']
        },
        'utm':{
            'valor': json_request['utm']['valor'],
            'fecha': json_request['utm']['fecha']
        }
    }
    return render(request, 'productos.html', api_datos )
