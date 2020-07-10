#!/bin/bash

jsonnet --ext-str env="prod" --ext-str buildNumber="913" mm-ios-v1.jsonnet
