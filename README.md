# Dockerized phpliteadmin(version: 1.9.8.2)

To access your databases in the folder `./db/` run container `phpliteadmin` by:

    docker run -d -p 8080:80 \
       -e PASSWORD="secret"  \
       -e TZ=Europe/Berlin   \
       -v "$PWD"/db:/db      \
       --name phpliteadmin   \
       jennerwein/phpliteadmin:latest  

Now you can access the databases `./db/db.sqlite` and `chinook.db` via <http://127.0.0.1:8080> (using password `secret`).  
In command above `"$PWD"/db` is the path to the folder with the databases.

To build and test your own docker file use the scripts with your `GITHUB_NAME`. 
