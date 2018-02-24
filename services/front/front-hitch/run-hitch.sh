#!/bin/sh
exec hitch -q --user=nobody -n 4 --write-proxy --frontend=[*]:9801 --backend=[127.0.0.1]:9999 theKey.pem
