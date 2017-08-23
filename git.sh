#!/bin/sh
REMOTE=$(git ls-remote https://github.com/key4-nginx/nginx_config.git | grep HEAD | awk '{ print $1}')
<<<<<<< HEAD
LOCAL=$(git rev-parse @)

if [[ $LOCAL = $REMOTE ]]; then
    echo "Up-to-date"
elif [[ $LOCAL != $REMOTE ]]; then
    git pull
else
    echo "Diverged"
	fi
=======
LOCAL=$(git rev-parse @)

if [[ $LOCAL = $REMOTE ]]; then
    echo "Up-to-date"
elif [[ $LOCAL != $REMOTE ]]; then
    sh -c 'cd /etc/nginx/nginx_config && git pull'
else
    echo "Diverged"
	fi
>>>>>>> 92c63bed35d7dc49aca3a8140931793648daa01d
