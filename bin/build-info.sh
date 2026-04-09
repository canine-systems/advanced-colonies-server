#!/bin/bash

COMMIT=$(git log -1 --format=%h)
AC_PR_URL=$(curl -s "https://api.github.com/repos/canine-systems/advanced-colonies-server/commits/${COMMIT}/pulls" | jq -r '.[0].html_url' 2>/dev/null | sed 's/^null$//')
AC_PR=${AC_PR_URL##*/}

echo "COMMIT=${COMMIT}"
echo "AC_PR_URL=${AC_PR_URL}"
echo "AC_PR=${AC_PR}"
