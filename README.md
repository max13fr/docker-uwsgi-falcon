# docker-uwsgi-falcon
Falcon python framework on UWSGI for docker. Run on python 3.6

Inspired by https://github.com/pujaramihir/falcon-uwsgi

# usage
* override /falcon-app with your application folder (search for app.py in this file)

# exemple
docker create --name PROJECT_NAME -v /srv/project:/falcon/app -p 8081:8081 max13fr/uwsgi-falcon
