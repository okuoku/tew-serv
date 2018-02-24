#!/bin/sh
varnishd -a 127.0.0.1:9999,proxy -f /front/config.vcl

