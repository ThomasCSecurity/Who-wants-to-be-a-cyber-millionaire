#!/bin/bash

PWD=''

Sudo open -a Docker

# Need to add a sleep here

Sudo docker build -t capstone/web-srv:1.0 .

Sudo docker run -dit --name Demo -p 8080:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:2.4
