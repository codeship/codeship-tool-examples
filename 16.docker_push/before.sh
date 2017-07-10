#!/bin/sh
docker run -d --cidfile ./registry.cid -p 5000:5000 registry:2

