
from django.db import models


class Usuario(models.Model):
    codigo = models.BigAutoField(primary_key=True)
    run = models.DecimalField(max_digits=11, decimal_places=0, blank=True, null=True)
    nombres = models.CharField(max_length=80, blank=True, null=True)
    apellidos = models.CharField(max_length=100, blank=True, null=True)  
    email = models.CharField(max_length=80, blank=True, null=True)
    telefono = models.CharField(max_length=16, blank=True, null=True)
    membresia = models.CharField(max_length=250, blank=True, null=True)
    fecha_nac = models.CharField(max_length=250, blank=True, null=True)


class Contacto(models.Model):
    codigo = models.BigAutoField(primary_key=True)
    nombres = models.CharField(max_length=80, blank=True, null=True)
    apellidos = models.CharField(max_length=100, blank=True, null=True)  
    email = models.CharField(max_length=80, blank=True, null=True)
    telefono = models.CharField(max_length=16, blank=True, null=True)
    asunto = models.CharField(max_length=250, blank=True, null=True)
    mensaje = models.CharField(max_length=250, blank=True, null=True)

