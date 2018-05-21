"""clusterapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
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
# Following have been commented out as they're not used:
# from django.contrib import admin
# from django.urls import path
from django.conf.urls import url
from django.views.generic import TemplateView
from django_reference_app.views import showform, s3test

urlpatterns = [
    url(r'^s3test$', s3test),
    url(r'^$', TemplateView.as_view(template_name='homepage.html')),
    url(r'^infopage', showform)
]