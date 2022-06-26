from django.shortcuts import render
from duoc_django_prueba.models import Contacto

def index_mant_contact(request):
    try:
        type_method = request.POST['type-method']
        inp_codigo = request.POST['inp-codigo']

        if type_method == 'UPDATE':
            id = inp_codigo
            nombres = request.POST['inp-nombres']
            apellidos = request.POST['inp-apellidos']
            email = request.POST['inp-email']
            telefono = request.POST['inp-tel']            
    
            contacto = Contacto.objects.get(pk=id)
            contacto.nombres = nombres
            contacto.apellidos = apellidos
            contacto.email = email            
            contacto.telefono = telefono            
    
            contacto.save(force_update=True)
 
        if type_method == 'DELETE':
            contacto = Contacto.objects.get(pk=inp_codigo)
            contacto.delete()

    except Exception as e:
        print(e)
    contactos = Contacto.objects.all
    return render(request, 'mantenedor-contacto.html', {'contactos': contactos})
