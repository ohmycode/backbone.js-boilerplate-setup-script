#!/bin/sh

BOILERPLATE_VERSION=`php ./get_boilerplate_version.php`

wget "http://github.com/h5bp/html5-boilerplate/zipball/"$BOILERPLATE_VERSION"stripped" --no-check-certificate .
unzip $BOILERPLATE_VERSION"stripped" -d ./omc_temp

TEMPNAME=`ls ./omc_temp/`
mv omc_temp/$TEMPNAME ./web

wget -P ./web/js/libs/ http://backbonejs.org/backbone.js
wget -P ./web/js/libs/ http://backbonejs.org/backbone-min.js
wget -P ./web/js/libs/ http://documentcloud.github.com/underscore/underscore.js
wget -P ./web/js/libs/ http://documentcloud.github.com/underscore/underscore-min.js

# move everything outside the bin dir
mv ./web ../rename_me

# CLEAN UP
rm -rf ../omc_bin
rm ../start_backbone_project.command