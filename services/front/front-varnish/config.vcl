vcl 4.0;

/* kc: Keycloak */
backend kc {
    .host = "127.0.0.1";
    .port = "8090";
}

/* rc: RocketChat */
backend rc {
    .host = "127.0.0.1";
    .port = "3000";
}

/* gb: GitBucket */
backend gb {
    .host = "127.0.0.1";
    .port = "8080";
}

sub vcl_recv {
    set req.http.X-Forwarded-Proto = "https";
    if (req.url ~ "^/kc") {
        set req.backend_hint = kc;
        //set req.url = regsub(req.url, "^/kc/", "/");
    } else if (req.url ~ "^/rc") {
        set req.backend_hint = rc;
        //set req.url = regsub(req.url, "^/rc/", "/");
    } else if (req.url ~ "^/gb") {
        set req.backend_hint = gb;
        set req.url = regsub(req.url, "^/gb/", "/");
    }
}
