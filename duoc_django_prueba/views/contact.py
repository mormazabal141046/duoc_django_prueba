from django.shortcuts import render
from duoc_django_prueba.models import Contacto

def index_contact(request):
    print('Retornar pagina index.html')
    return render(request, 'contacto.html')

def contact_register(request):
    print('contact_register')
    
    if request.method == 'POST':
        try:
            asunto = request.POST.get('inp-asunto')
            nombres = request.POST.get('inp-nombres')
            apellidos = request.POST.get('inp-apellidos')
            email = request.POST.get('inp-email')
            telefono = request.POST.get('inp-tel')
            mensaje = request.POST.get('inp-mensaje')

            contacto = Contacto()
            contacto.asunto = asunto
            contacto.nombres = nombres
            contacto.apellidos = apellidos
            contacto.email = email
            contacto.telefono = telefono
            contacto.mensaje = mensaje
            contacto.save()
        except Exception as e:
            print(e)

    return render(request, 'contacto.html')