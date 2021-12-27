# phpliteadmin

Run phpliteadmin by:  

    docker run -d -p 8080:80 \
       -e PASSWORD="secret"  \
       -v "$PWD"/db:/db      \
       --name phpliteadmin \
       jennerwein/phpliteadmin:latest`  

Then you can access the example database `db/db.sqlite` by <http://127.0.0.1:8080/phpliteadmin.php> using password `secret`.

