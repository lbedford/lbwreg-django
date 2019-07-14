# lbwreg-django
Overall django container for lbwreg + accounts

use recursive clone to also pull in registration and accounts.

docker-compose up
will run everything, and you can access it on http://localhost:8000/

you need to run docker-compose build to make the images though

There are probably no database tables, run
docker-compose run web python manage.py migrate --run-syncdb
to create them.


