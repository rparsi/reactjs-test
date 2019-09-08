#!/bin/bash

if [ ! -f "./package.json" ]; then
    npm init
fi

# install the create-react-app package
if [ ! -f "./node_modules/create-react-app/index.js" ]; then
    npm install --save create-react-app
fi

# setup symlink to create-react-app
if [ ! -f "./cra" ]; then
    ln -s ./node_modules/create-react-app/index.js ./cra
fi

# create the app if it doesn't exist
if [ ! -d "./app" ]; then
    ./cra app
fi

cd app
echo "in "
echo `pwd`
npm install --save popper.js bootstrap ajv redux react-redux redux-thunk redux-orm jquery
cd ..
echo "in "
echo `pwd`

# setup symlinks
# not sure if this is necessary
#if [ ! -f "./bootstrap" ]; then
#    ln -s ./node_modules/bootstrap ./bootstrap
#fi