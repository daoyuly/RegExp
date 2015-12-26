#!/bin/bash

display(){
    echo "\033[32m${1}\033[0m"
}

git add * 

git ci -m 'add'

git push origin master

display 'done'

exit 0
