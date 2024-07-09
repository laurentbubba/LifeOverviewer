from django.urls import path
from task_overview import views

urlpatterns = [
    path("", views.home, name="home")
]