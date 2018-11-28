#!/bin/bash

cd keys/

openssl genrsa -out ca.private.key 4096 openssl req -new -x509 -days 4096 -key ca.private.key -out ca.public.key
openssl genrsa -out smtp.private.key 4096 openssl req -new -key smtp.private.key -out smtp.csr openssl x509 -req -days 1024 -in smtp.csr -CA ca.public.key -CAkey ca.private.key -set_serial 01 -out smtp.public.key
