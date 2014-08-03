#!/usr/bin/env bash

export base_dir="${PWD}"
export target="${HOME}"

mkdir ${target}/Repositories ${target}/Repositories/Rev \
    ${target}/Repositories/Dev

cp -arf ${base_dir}/Shell/.vim ${target}/
cp -arf ${base_dir}/Shell/.zshrc ${target}/
cp -arf ${base_dir}/Shell/.vimrc ${target}/
cp -arf ${base_dir}/Shell/.gitconfig ${target}/

bash $base_dir/install/init

cp -arf ${target}/Repositories/Dev/* ${target}/Repositories/Rev/
