#!/bin/bash
mkdir -p sample
find ~/.rvm -name *.rb | each 'ln -s _ sample/ruby-$(md5sum _ | awk "{print \$1}"); echo _'
