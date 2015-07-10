#!/bin/bash

for entry in $(ls config)
do
    touch "~/.$entry"
    cp -v "config/$entry" "~/.$entry"
done
