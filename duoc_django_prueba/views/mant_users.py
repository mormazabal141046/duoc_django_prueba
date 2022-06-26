
from django.shortcuts import render
from duoc_django_prueba.models import Usuario

def index_mant_users(request):
    print('mantenedorcontacto.py -> load_contacto')    
    try:
        type_method = request.POST['type-method']
        inp_codigo = request.POST['inp-codigo']

        print('method.py -> index_mant_users', type_method)    

        if type_method == 'UPDATE':
            id = inp_codigo
            nombres = request.POST['inp-nombres']
            apellidos = request.POST['inp-apellidos']
            email = request.POST['inp-email']
            telefono = request.POST['inp-tel']            
    
            usuario = Usuario.objects.get(pk=id)
            usuario.nombres = nombres
            usuario.apellidos = apellidos
            usuario.email = email            
            usuario.telefono = telefono            
    
            #Actualizando en la base de datos                      
            usuario.save(force_update=True)
 

        if type_method == 'DELETE':
            usuario = Usuario.objects.get(pk=inp_codigo)
            usuario.delete()

    except Exception as e:
        print(e)
    usuarios = Usuario.objects.all
    return render(request, 'mantenedor-usuarios.html', {'usuarios': usuarios})