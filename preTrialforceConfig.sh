#!/bin/bash
clear
read -p 'Org Alias: ' SFDXALIAS
read -p 'Disable Bots y/n? ' BOTS
read -p 'Disable Activity capture y/n? ' EAC
read -p 'Disable High Velocity Sales y/n? ' HVS
read -p 'Disable IoT y/n? ' IOT
read -p 'Disable Messaging y/n? ' MESSAGING
read -p 'Disable Pardot y/n? ' PARDOT
read -p 'Disable Einstein Voice y/n? ' VOICE

SUCCESSES='~~~~~ Successfully Disabled Items ~~~~~'
FAILS='^^^^ Errors When Disabling ^^^^'


if [ "$BOTS" == 'y' ]; then
  echo
  echo '*** Einstein Bots ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/Bot.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** Einstein bots disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nEinstein Bots'
    else
      #echo '^^^ There was an error disabling Einstein Bots ^^^'
      FAILS=$FAILS'\nEinstein Bots'
  fi
fi

if [ "$EAC" == 'y' ]; then

  echo
  echo '*** Einstein Activity Capture ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/EAC.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** Einstein Activity Capture disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nEinstein Activity Capture'
    else
      #echo '^^^ There was an error disabling Einstein Activity Capture ^^^'
      FAILS=$FAILS'\nEinstein Activity Capture'
  fi


  #sfdx force:source:deploy -p force-app/main/default/settings/EmailIntegration.settings-meta.xml -u $SFDXALIAS
fi

if [ "$HVS" == 'y' ]; then

  echo
  echo '*** High Velocity Sales ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/HighVelocitySales.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** High Velocity Sales disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nHigh Velocity Sales'
    else
      #echo '^^^ There was an error disabling High Velocity Sales ^^^'
      FAILS=$FAILS'\nHigh Velocity Sales'
  fi


fi

if [ "$IOT" == 'y' ]; then
  echo
  echo '*** IoT ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/IoT.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** IoT disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nIoT'
    else
      #echo '^^^ There was an error disabling IoT ^^^'
      FAILS=$FAILS'\nIoT'
  fi

fi

if [ "$MESSAGING" == 'y' ]; then

  echo
  echo '*** Messaging (LiveMessage) ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/LiveMessage.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** Messaging (LiveMessage) disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nMessaging (LiveMessage)'
    else
      #echo '^^^ There was an error disabling Messaging (LiveMessage) ^^^'
      FAILS=$FAILS'\nMessaging (Live Message)'
  fi


fi

if [ "$PARDOT" == 'y' ]; then

  echo
  echo '*** Pardot ***'
  if sfdx force:source:deploy -p force-app/main/default/settings/Pardot.settings-meta.xml -u $SFDXALIAS
    then
      #echo '*** Pardot disabled for org $SFDXALIAS ***'
      SUCCESSES=$SUCCESSES'\nPardot'
    else
      echo '^^^ There was an error disabling Pardot ^^^'
      FAILS=$FAILS'\nPardot'
  fi
fi

if [ "$VOICE" == 'y' ]; then
    echo
    echo '*** Einstein Voice ***'
    if sfdx force:source:deploy -p force-app/main/default/settings/Voice.settings-meta.xml -u $SFDXALIAS
      then
        #echo '*** Einstein Voice disabled for org $SFDXALIAS ***'
        SUCCESSES=$SUCCESSES'\nEinstein Voice'
      else
        #echo '^^^ There was an error disabling Einstein Voice ^^^'
        FAILS=$FAILS'\nEinstein Voice'
    fi
fi

echo 
echo -e $SUCCESSES
echo
echo -e $FAILS
echo
