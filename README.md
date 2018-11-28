honeypot-ftp
============

FTP Honeypot

Features:
 * FTP + SSL-FTP
 * Catch used credentials
 * Catch malware files
 * distribute honeytoken files

Dependencies:
 * Twisted
 * My site-packages(3) --> common-modules

Usage:
```bash
# Generate Config
python ftp.py -d config.xml
# Run
python ftp.py
```

TODO: 
 * retain and analyse Files (Hash, Clam, Virustotal, ...)
 
Contribution welcome.

FAQ
===
1) Generate SSL-Certificates

```bash
$ ./generate-keys.sh
```

SSL Check Connection
openssl s_client -quiet -connect 127.0.0.1:990

2) Known Errors
OpenSSL.SSL.Error: [('system library', 'fopen', 'No such process'), ('BIO routines', 'FILE_CTRL', 'system lib'), ('SSL routines', 'SSL_CTX_use_certificate_file', 'system lib')]
 --> Certifcate Files not found (wrong path?)

All rights reserved.
(c) 2014 by Alexander Bredo
