# Q Industries - Pre-Trialforce Config Steps


* Install using the Q Branch Industry Deployer

Click on the following link and authenticate your org:

Install via Industry Deployer - https://industry-deployer.herokuapp.com/byoo?template=https://github.com/sfdc-qbranch/IDO-pre-trialforce-steps



* Required Setup and how to install manually (from command line)

1. SalesforceDX CLI has been installed --> [How to Install](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm)
2. You've pulled down this local repository and have opened a command prompt window with this project being your current directory
3. You've authenticated the SalesforceDX CLI with your Master IDO template --> [How to authenticate an org](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_auth_web_flow.htm)
3. In a terminal window, type: *./preTrialforceConfig.sh* and follow the prompts


## What this Project does

There's a number of manual steps that IDOs do before we Trialforce our orgs for distribution.  As opposed to doing them all manually, it's more consistent to do them as scripted as much as possible.  The document with those best practices can be found here: https://salesforce.quip.com/b4csAdhnyqm1

This is equivalent to going within Setup in your IDO Master template org and flipping the feature switch to "Disabled" for a number of features:

Right now this focus' on **disabling** the following feature settings:
1. Einstein Bots
2. Einstein Activity Capture
3. High Velocity Sales
4. IoT
5. Live Message
6. Pardot
7. Einstein Voice
