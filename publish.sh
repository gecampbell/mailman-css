#!/bin/sh

FILE=mailman.css

if [ -f $FILE ]; then
    aws s3 cp mailman.css s3://files.glencampbell.co \
        --cache-control "max-age=600"
else
    echo "You're not in the right place. No $FILE here."
    exit
fi
