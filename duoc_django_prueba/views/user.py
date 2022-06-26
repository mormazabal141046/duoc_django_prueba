from django.shortcuts import render
from duoc_django_prueba.models import Usuario

def index_user(request):
    print('Retornar pagina index.html')
    return render(request, 'usuario.html')

def user_register(request):
    print('user_register')
    
    if request.method == 'POST':
        try:
            run = request.POST.get('inp-run')
            nombres = request.POST.get('inp-nombres')
            apellidos = request.POST.get('inp-apellidos')
            email = request.POST.get('inp-email')
            telefono = request.POST.get('inp-tel')
            membresia = request.POST.get('inp-membresia')
            fecha_nacimiento = request.POST.get('inp-fecnac')

            usuario = Usuario()
            usuario.run = run
            usuario.nombres = nombres
            usuario.apellidos = apellidos
            usuario.email = email
            usuario.telefono = telefono
            usuario.membresia = membresia
            usuario.fecha_nacimiento = fecha_nacimiento
            usuario.save()
        except Exception as e:
            print(e)

    return render(request, 'usuario.html')