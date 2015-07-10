#!/bin/bash

for entry in $(ls config)
do
    cp -v "config/$entry" "~/.$entry"
done
