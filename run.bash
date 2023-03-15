#!/usr/bin/env bash

while true
do
    random_cat_picture_url="https://cataas.com/cat/gif"

    tmp_file_path=$(mktemp)

    curl $random_cat_picture_url -s -o $tmp_file_path

    catimg $tmp_file_path -l 3

    rm $tmp_file_path
done