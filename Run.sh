#!/bin/sh

echo "Running Actual serverspec automation code using run.sh"

if [ "${SPEC_HOST_AUTHENTICATION}" = "key" ]
then
echo "AUTHENTICATION TYPE is key"
mkdir "key"
touch "key/${SPEC_USER}_${SPEC_HOST_NAME}.key"
echo -e "${SPEC_KEY}" > "key/${SPEC_USER}_${SPEC_HOST_NAME}.key"
chmod 600 key/${SPEC_USER}_${SPEC_HOST_NAME}.key
fi

echo "running serverspec using rake spec"
rake spec








