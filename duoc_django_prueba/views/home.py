from django.shortcuts import render

def index(request):
    print('Retornar pagina index.html')
    return render(request, 'index.html')
