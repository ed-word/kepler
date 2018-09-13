#!/bin/bash

links_dir=links

for script in $links_dir/*
do
    sh $script
    break
done
