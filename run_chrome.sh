#!/usr/bin/env bash

rm -rfv ./reports/chrome
mkdir -p ./reports/chrome

katalon_opts='-browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/MyFirstTestSuite"'
docker run --rm -v $(pwd)/HealthCareProject:/katalon/katalon/source:ro -v $(pwd)/reports/chrome:/katalon/katalon/report -e KATALON_OPTS="$katalon_opts" katalonstudio/katalon
