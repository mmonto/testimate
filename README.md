# Robot Framework demo with Docker.
Connecting to Testimate webpage with Chrome or Firefox browser. 

# PRE-REQUIREMENTS
1. DOCKER DESKTOP installed: https://docs.docker.com/docker-for-windows/install/
   note: check from docker desktop "settings - reources - file sharing" that your local C: drive is shared for containers use.

2. GIT SCM installed: https://git-scm.com/downloads for Gitbash console. 

# RUNNING TESTS
goto your local directory C:\repo (create if not existing) with your Gitbash console and
give command "git clone https://github.com/mmonto/testimate.git" 

and then goto your local directory C:\repo\testimate

# RUN TEST WITH CHROME
give command "./run_robot.sh chrome

# RUN TEST WITH FIREFOX
give command "./run_robot.sh firefox

# DOCKER
Demo is using docker image:
https://hub.docker.com/r/ppodgorsek/robot-framework

# RUN ROBOT

if tests are not found, please check your path settings in run_robot.sh file (in case you are using 
different folder than C:\repo)

less run_robot.sh 

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

If you want to run tests from another folders, just updated the folder paths with -v parameter as shown in 
the example run sh file. 

Godspeed. 
