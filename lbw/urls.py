from django.urls import include, path
from django.contrib import admin
from registration import urls as registration_urls
from accounts import urls as accounts_urls

urlpatterns = [
    path('', include(registration_urls, namespace='registration')),
    path('accounts/', include(accounts_urls)),
    path('rawadmin/', admin.site.urls)
]
