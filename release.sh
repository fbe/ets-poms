#!/bin/bash

RELEASE_VERSION="0.2.4"
DEVELOPMENT_VERSION="0.3.0-SNAPSHOT"
RELEASE_TAG="v$RELEASE_VERSION"

mvn release:prepare release:perform -DdevelopmentVersion=$DEVELOPMENT_VERSION -Dtag=$RELEASE_TAG -DreleaseVersion=$RELEASE_VERSION -DautoVersionSubmodules=true -Dgoals="gpg:sign deploy" -Darguments='-DaltDeploymentRepository=artifactory::default::https://artifactory.peng.gkh-setu.de/felix-ets-release-tests/'
