BROWSER=$1

docker run \
    -v C:/repo/testimate/robotframework/testsuites:/opt/robotframework/tests:Z \
	-v C:/repo/testimate/robotframework/resources:/opt/robotframework/resources:Z \
	-v C:/repo/testimate/robotframework/variables:/opt/robotframework/variables:Z \
	-v C:/repo/testimate/robotframework/locators:/opt/robotframework/locators:Z \
	-v C:/repo/testimate/robotframework/reports:/opt/robotframework/reports:Z \
    -e BROWSER=$BROWSER \
	--shm-size=1g \
	-e ROBOT_OPTIONS="--loglevel INFO" \
    ppodgorsek/robot-framework:latest
