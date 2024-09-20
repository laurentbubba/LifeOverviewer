from django.http import HttpResponse
from .models import Task
from django.shortcuts import render

# Create your views here.

def home(request):
    return HttpResponse("I love my Genta! A BUNCH")

def task_overview(request):
    all_tasks = Task.objects.all()
    context = {"all_tasks":Task.objects.all()}

    return render(request, '../templates/tasks.html', context)