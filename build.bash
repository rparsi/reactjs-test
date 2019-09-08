#!/bin/bash

echo "in "
echo `pwd`

cd app
echo "in "
echo `pwd`
npm run build
cd ..

echo "in "
echo `pwd`