#!/bin/bash
cat > $1.tmpl<<EOF
cn = "$1"
unit = "$1"
expiration_days = 3650
signing_key
tls_www_client
EOF
certtool --generate-privkey --outfile $1-key.pem
certtool --generate-certificate --load-privkey $1-key.pem --load-ca-certificate ca-cert.pem --load-ca-privkey ca-key.pem --template $1.tmpl --outfile $1-cert.pem
certtool --to-p12 --load-privkey $1-key.pem --pkcs-cipher 3des-pkcs12 --load-certificate $1-cert.pem --outfile $1.p12 --outder
