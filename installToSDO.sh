#!/bin/bash
# 1) SFDX org alias
read -p 'SFDX Org Alias: ' orgAlias

STARTTIME=$(date +%s)

sfdx force:source:deploy -p force-app -u $orgAlias

ENDTIME=$(date +%s)

echo
echo '************************************************************************'
echo "Build took $(($ENDTIME - $STARTTIME)) seconds to complete..."
echo '************************************************************************'
echo

ENDTIME=$(date +%s)
BUILD_TIME_SEC=$(($ENDTIME - $STARTTIME))

echo
echo '************************************************************************'
echo "Build took $BUILD_TIME_SEC seconds to complete..."
echo '************************************************************************'
echo

./scripts/bash/buildLog.sh DevHub $BUILD_TIME_SEC "PreTrialforceSteps"

#Open Org
sfdx force:org:open -p /lightning/page/home -u $orgAlias
