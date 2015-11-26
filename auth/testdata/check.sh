#!/bin/bash
echo The following checks should fail:

echo
curl -D -   http://localhost:8080/anything.at.all
echo
curl -D -  -H X-Sling-Token:t1:peter:10 -w'\n'   http://localhost:8080/anything.at.all
echo
curl -D -  -H X-Sling-Token:foo -w'\n'   http://localhost:8080/anything.at.all
echo

echo
echo The following check should succeed:
curl -D -  -H X-Sling-Token:t1:peter:10058b75cb0b719d5a9efb39e97416bc -w'\n'   http://localhost:8080/anything.at.all
echo
