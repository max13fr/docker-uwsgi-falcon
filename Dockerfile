FROM python:3.6.2-alpine3.6

RUN set -x \
    && apk --update --no-cache add make \
    && apk --update --no-cache --virtual .build-dep add \
        build-base \
	      linux-headers \
    && pip install --upgrade pip \
    && pip install --no-cache-dir falcon \
    && pip install --no-cache-dir ujson \
    && pip install --no-cache-dir cython \
    && pip install --no-cache-dir --no-binary :all: falcon \
    && pip install --no-cache-dir uwsgi \
    && apk del .build-dep

ADD app.py /falcon-app/

EXPOSE 9090

CMD ["ls --la cd /falcon-app && uwsgi --http :9090 --wsgi-file app.py"]
