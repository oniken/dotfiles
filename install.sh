#!/bin/bash

for entry in $(ls config)
do
    cp -v "$entry" "~/.$entry"
done
