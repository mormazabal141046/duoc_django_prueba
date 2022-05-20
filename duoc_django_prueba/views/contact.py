from django.shortcuts import render

def index_contact(request):
    print('Retornar pagina index.html')
    return render(request, 'contacto.html')
