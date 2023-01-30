#!/bin/bash

pip3 install online-judge-tools
npm install -g atcoder-cli

_PATH="$(dirname $0)"
ACC_TEMPLATE_DIR_PATH="$(acc config-dir)/go"
ACC_GO_TEMPLATE_PATH="$(acc config-dir)/go/main.go"
ACC_TEMPLATE_CONFIG_PATH="$(acc config-dir)/go/template.json"

[ ! -f $ACC_TEMPLATE_DIR_PATH ] && mkdir $ACC_TEMPLATE_DIR_PATH

if [ ! -f $ACC_GO_TEMPLATE_PATH ]; then
mv "$_PATH/../setup/template.go" $ACC_GO_TEMPLATE_PATH \
  && rm "$_PATH/../setup/template.go"
fi

if [ ! -f $ACC_TEMPLATE_CONFIG_PATH ]; then
touch $ACC_TEMPLATE_CONFIG_PATH
mv "$_PATH/../setup/template.json" $ACC_TEMPLATE_CONFIG_PATH \
  && rm "$_PATH/../setup/template.json"
fi

if ! $(grep -q oj-login ~/.bashrc); then
cat << EOF >> ~/.bashrc
alias oj-login="oj login https://beta.atcoder.jp/"
EOF
fi

if ! $(grep -q oj-test ~/.bashrc); then
cat << EOF >> ~/.bashrc
alias oj-test="oj test -c \"go run main.go\" -d tests"
EOF
fi

acc config default-template go