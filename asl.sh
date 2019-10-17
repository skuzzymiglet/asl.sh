#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $DIR
$DIR/conv.sh & 
cpulimit -l 40 -i "$DIR/core.sh"
