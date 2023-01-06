#!/bin/bash

docker build -t ubuntu_user .
docker run -ti --rm ubuntu_user /bin/bash
