#!/bin/bash

set -u

version="${1:-linux}"

if [[ `uname` == 'Linux' ]]; then
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install -y git sudo software-properties-common

    which ansible

    if [ ! $? -eq 0 ]; then
        set -e

        sudo add-apt-repository ppa:ansible/ansible
        sudo apt-get update --allow-unauthenticated -y 
        sudo apt-get install -y ansible
    fi;
fi;

set -x

ansible-playbook -K -i "localhost," -c local ${version}.yaml "${@:2}"
