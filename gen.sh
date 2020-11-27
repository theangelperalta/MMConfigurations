#!/bin/bash

#set the buildNumber to the total number of commits on current branch plus a constant
commitCount=$(git rev-list HEAD --count)
buildNumber=$(($commitCount + 1300000))

branch=$(git branch --show-current)

if [ $branch == master ]; then
    branch="prod"
    jsonnet --ext-str env=$branch --ext-str buildNumber=$buildNumber mm-ios-v1.jsonnet | jq -c > $1
elif [ $branch == stage ]; then
    jsonnet --ext-str env=$branch --ext-str buildNumber=$buildNumber mm-ios-v1.jsonnet | jq -c > $1
elif [ $branch == develop ]; then
    branch="dev"
    jsonnet --ext-str env=$branch --ext-str buildNumber=$buildNumber mm-ios-v1.jsonnet | jq -c > $1
fi
