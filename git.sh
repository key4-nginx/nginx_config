#!/bin/sh

REMOTE=$(DIR(){
git ls-remote https://github.com/key4-nginx/nginx_config.git | grep HEAD | awk '{ print $1}'
})
LOCAL=$(git rev-parse @)

if [[ $LOCAL = $REMOTE ]]; then
    echo "Up-to-date"
elif [[ $LOCAL != $REMOTE ]]; then
    echo "Need to pull"
else
    echo "Diverged"
fi