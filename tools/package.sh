#!/usr/bin/env bash

# extract the current version from the POM file 
V=$( xpath -e '/project/version' pom.xml 2>/dev/null | \
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
	( cd samples && zip -9jr ../OpenAIRE_Guidelines_for_CRIS_Managers-samples_v$V.zip *.xml ) || exit 4
	( cd schemas && find . -type f | sort | xargs zip -9r ../OpenAIRE_Guidelines_for_CRIS_Managers-schemas_v$V.zip ) || exit 5 
)

# run sphinx to create the pdf file and place that in target/ too
(
    cd docs
    make html latexpdf
    make latexpdf
    cp -v _build/latex/OpenAIREGuidelines.pdf ../target/OpenAIRE_Guidelines_for_CRIS_Managers-document_v$V.pdf
)
