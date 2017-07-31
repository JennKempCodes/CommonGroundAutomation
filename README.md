Common Ground Objectives


Here is how to add your password to the script without showing it on github:


creating the following file locally:
"login.rb"

inside login.rb paste this code:



module Login

  def username
    'EMAIL'
    end

  def password
    'PASSWORD'
  end
end

Change the above username and password values to your actually email values - the .gitignore will not allow this file to be tracked.  Enjoy running the script!


NOTE:
In order to run this script successfully, you will need the following installed on your machine:

Firefox browser version 54 ( or latest )
Ruby verison 2.+
Ruby Selenium-Webdriver version - selenium-webdriver (3.4.4) ( latest )

If you get the following error on OSX:

"not able to find gecko driver"
, please do the following ( you must have Homebrew installed ):

brew install geckodriver

Acceptance Criteria:
We need to make sure the site is up and running.
We need to make sure that the URL directs are working


Automated UI (user interface) test
success or failure email (automated)
automated CI (continuous integration) jenkins runs our "job" (script) daily @ time


What do we need to test

Steps:

Setup common git automation repo- Jennifer
Install / setup CI (JEnkins) - locally
Research way to run script on remote server (free) (coud 9?)
write smoke test automation script
write full test automation script
Send email notification

##### new updates to README

Common ground objectives:


Acceptance Criteria:
We need to make sure the site is up and running.
We need to make sure that URL redirects are working



Have automated UI test
Success or failure email
CI ( Jenkins ) runs our job ( script ) daily at 9am






What do we need to test?


Steps:

Setup Common Git automation repo - Jennifer
Install / Setup CI ( Jenkins ) - locally
Research way to run script on remote server for free ( cloud 9 )
Write Smoke Test automation script
Write Full Test automation script
Send email notification


This is a test of git branching