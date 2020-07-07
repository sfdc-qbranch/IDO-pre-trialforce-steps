# Q Industries - Pre-Trialforce Config Steps


Required Setup and how to run (from command line)

1. SalesforceDX CLI has been installed
2. You've pulled down this local repository and have opened a command prompt window with this project being your current directory
3. You've authenticated the SalesforceDX CLI with your Master IDO template 
3. In the command terminal, type: ./preTrialforceConfig.sh


What this Project does

There's a number of manual steps that IDOs do before we Trialforce our orgs for distribution.  As opposed to doing them all manually, it's more consistent to do them as scripted as much as possible.  The document with those best practices can be found here: https://salesforce.quip.com/b4csAdhnyqm1

This is equivalent to going within Setup in your IDO Master template org and flipping the feature switch to "Disabled" for a number of features:

Right now this focus' on disabling the following feature settings:
1. Einstein Bots
2. Einstein Activity Capture (not tested yet)
3. High Velocity Sales
4. IoT
5. Live Message
6. Pardot
7. Einstein Voice (not tested yet)
