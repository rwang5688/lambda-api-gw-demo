#!/bin/bash
rm -rf ./dist && mkdir dist
cp -r ./src/* ./dist
cd ./dist
zip -r lambda-function-python.zip .
aws s3 cp lambda-function-python.zip s3://wangrob-sandbox-06-us-west-2-lambda-function-python
cd ..

cd templates
./create-lambda-function-python.sh

cd ..
