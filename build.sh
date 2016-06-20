#!/bin/bash

packageName="port-tester"
outputDir="target"
spl="$outputDir/$packageName.spl"
tar="$packageName.tar"


cp README.md $packageName

mkdir -p $outputDir

tar -cvzf $spl $packageName

rm $packageName/README.md
