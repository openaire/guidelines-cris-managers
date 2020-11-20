#!/usr/bin/env bash

echo '================================================================================'
echo '*  Compiling the CERIF-Model-Tools                                             *'
echo '================================================================================'
( cd ../CERIF-TG-Tools/CERIF-Model-Tools/ && mvn package )

echo
echo '================================================================================'
echo '*  Running the CERIF-Model-Tools                                               *'
echo '================================================================================'
java -jar ../CERIF-TG-Tools/CERIF-Model-Tools/target/cerif-model-tools-*.jar -d conf/openaire-cerif-profile.xml -o schemas/openaire-cerif-profile.xsd

echo
echo '================================================================================'
echo '*  Validating files and producing documentation sources                        *'
echo '================================================================================'

# extract the current version from the POM file 
V=$( xpath <pom.xml -e '/project/version' 2>/dev/null | \
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

echo
echo '================================================================================'
echo '*  Running the Prototype OpenAIRE Validator                                    *'
echo '================================================================================'
( cd ../openaire-cris-validator/ && mvn clean package )
