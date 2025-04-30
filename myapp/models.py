from django.db import models
from django.contrib.auth.models import User


# ⛔️ a Fazer, ⚠️ Fazendo e ✅ Finalizado
class Status(models.Model):
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class TodoList(models.Model):
    title = models.CharField(max_length=100)
    user = models.ForeignKey(User, on_delete=models.CASCADE,
                             related_name='user', to_field='id')
    status = models.ForeignKey(Status, on_delete=models.CASCADE,
                               related_name='status', to_field='id', default=1)

    def __str__(self):
        return self.title
