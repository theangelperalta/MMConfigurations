#!/bin/bash

#set the buildNumber to the total number of commits on current branch plus a constant
commitCount=$(git rev-list HEAD --count)
buildNumber=$(($commitCount + 1300000))

branch=$(git name-rev --name-only HEAD)

if [ $branch == master ]; then
    branch="prod"
    jsonnet --ext-str env=$branch --ext-str buildNumber=$buildNumber mm-ios-v1.jsonnet
elif [[ $branch == "stage" || $branch == "test" ]]; then
    jsonnet --ext-str env=$branch --ext-str buildNumber=$buildNumber mm-ios-v1.jsonnet
fi
