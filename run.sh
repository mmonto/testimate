#!/usr/bin/env bash

docker run \
 --rm \
 --volume "C:/Users/MikkoMonto/PycharmProjects/testimate/Testsuites":/home/robot/tests \
 --volume "C:/Users/MikkoMonto/PycharmProjects/testimate/Results":/home/robot/results \
 robotframework/rfdocker:latest \
 tests
