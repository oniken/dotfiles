#!/bin/bash

for entry in $(ls config)
do
    touch "~/.$entry"
    cp -v "$HOME/.$entry" "$HOME/.$entry\.saved"
    cp -v "config/$entry" "$HOME/.$entry"
done
