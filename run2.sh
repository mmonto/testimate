#!/usr/bin/env bash
docker run \
    -v $(pwd)/example.robot:/tests/example.robot:ro \
    -v $(pwd)/out:/out:rw \
    eficode/robotframework-selenium-chrome \
      --outputdir /out /tests