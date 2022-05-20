from django.shortcuts import render

def index_user(request):
    print('Retornar pagina index.html')
    return render(request, 'usuario.html')
