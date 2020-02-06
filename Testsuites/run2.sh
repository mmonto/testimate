#!/usr/bin/env bash
docker run -i \
	--volume "c:/Repo/testimate/Testsuites":/tests \
    --volume "c:/Repo/testimate/Results":/out:rw \
    eficode/robotframework-selenium-chrome \
    tests