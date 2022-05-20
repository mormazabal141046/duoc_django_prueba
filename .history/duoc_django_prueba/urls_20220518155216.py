"""duoc_django_prueba URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from duoc_django_prueba.views.home import index
from duoc_django_prueba.views.product import index_product
from duoc_django_prueba.views.contact import index_contact
from duoc_django_prueba.views.user import index_user



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index),
    path('productos/', index_product),
    path('contacto/', index_contact),
    path('usuario/', index_user)
]
