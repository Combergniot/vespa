#!/bin/bash
# Copyright 2017 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
set -e

pushd src/main && make clean && make all
popd

jar="target/jing.jar"
mainclass="com/thaiopensource/relaxng/util/Driver"

cmd="java -jar $jar src/main/resources/schema/services.rng src/test/schema-test-files/services.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/services.rng src/test/schema-test-files/major-version-services.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/services.rng src/test/schema-test-files/standalone-container.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/services.rng src/test/schema-test-files/services-hosted.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/services.rng src/test/schema-test-files/services-hosted-infrastructure.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/deployment.rng src/test/schema-test-files/deployment.xml"
echo $cmd
$cmd

cmd="java -jar $jar src/main/resources/schema/validation-overrides.rng src/test/schema-test-files/validation-overrides.xml"
echo $cmd
$cmd
