#!/usr/bin/env bash

# extract the current version from the POM file 
V=$( xpath <pom.xml '/project/version' 2>/dev/null | \
	 sed -ne '/<version>/s/<\/*version>//gp' )

# place the current version in the documentation config file
echo >docs/conf.sed "/^release/c\\
release = '$V'" && \
sed -f docs/conf.sed docs/conf.py >docs/conf1.py && \
mv docs/conf1.py docs/conf.py || \
exit 1

# run the maven script
mvn -B clean package || \
exit 2

# make the zip files
( 
	cd target || exit 3
	zip -9jr OpenAIRE_Guidelines_for_CRIS_Managers-samples_v$V.zip samples/*.xml || exit 4
	find schemas -type f | sort | xargs zip -9r OpenAIRE_Guidelines_for_CRIS_Managers-schemas_v$V.zip || exit 5 
)
