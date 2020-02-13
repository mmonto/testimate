#!/usr/bin/env bash

BROWSER=$1

docker run -i \
	--volume "C:/Repo/testimate/docker/$BROWSER":/tests \
    --volume "C:/Repo/testimate/docker/${BROWSER}/results":/out:rw \
    eficode/robotframework-selenium-$BROWSER \
	--outputdir out tests