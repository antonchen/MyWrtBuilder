#!/bin/bash
if [ -s external-package-urls.txt ];then
    cat external-package-urls.txt | xargs wget -P packages
else
    exit 0
fi
