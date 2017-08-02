# default falcon app

import falcon

class Index(object):
    def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.body = ('Hello world from falcon over uwsgi')

app = falcon.API()

app.add_route('/', Index())
