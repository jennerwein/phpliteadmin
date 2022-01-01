# Dockerized phpliteadmin(version: 1.9.8.2)

Provided you have a sqlite database at `./db/db.sqlite`. Run container `phpliteadmin` by:

    docker run -d -p 8080:80 \
       -e PASSWORD="secret"  \
       -e TZ=Europe/Berlin   \
       -v "$PWD"/db:/db      \
       --name phpliteadmin   \
       jennerwein/phpliteadmin:latest  

Then you can access `./db/db.sqlite` via <http://127.0.0.1:8080> (using password `secret`).
