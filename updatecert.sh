#!/usr/bin/env bash

# An awkward one liner that creates self-signed certs for budo. Https is required to use hand controllers.

openssl req -x509 -days 1825 -out localhost.crt -keyout localhost.key  -newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost' -extensions EXT -config <(printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n [EXT]\nsubjectAltName=DNS:localhost\n keyUsage=digitalSignature\nextendedKeyUsage=serverAuth")