#!/bin/sh
<<<<<<< HEAD
REMOTE=$(git ls-remote https://github.com/key4-nginx/nginx_config.git | grep HEAD | awk '{ print $1}')
=======

REMOTE=$(DIR(){
git ls-remote https://github.com/key4-nginx/nginx_config.git | grep HEAD | awk '{ print $1}'
})
>>>>>>> 2169e7cf07370ea3fd056deb513137cd3e06dc01
LOCAL=$(git rev-parse @)

if [[ $LOCAL = $REMOTE ]]; then
    echo "Up-to-date"
elif [[ $LOCAL != $REMOTE ]]; then
<<<<<<< HEAD
    git pull
else
    echo "Diverged"
fi




=======
    echo "Need to pull"
else
    echo "Diverged"
fi
>>>>>>> 2169e7cf07370ea3fd056deb513137cd3e06dc01
