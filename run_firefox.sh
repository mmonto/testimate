#!/usr/bin/env bash

docker run -i \
	--volume "C:/Repo/testimate/docker":/tests \
    --volume "C:/Repo/testimate/docker/results":/out:rw \
    eficode/robotframework-selenium-firefox \
	--outputdir out tests