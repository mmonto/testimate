#!/usr/bin/env bash

docker run \
 --rm \
 --volume "C:/Repo/testimate/Testsuites":/home/robot/tests \
 --volume "C:/Repo/testimate/Results":/home/robot/results \
 robotframework/rfdocker:latest \
 tests
 

