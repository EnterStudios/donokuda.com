# Upgrade guide

The purpose for this document is to help me upgrade Ember-CLI without breaking anything.

## Things to do

Follow the Ember-CLI upgrade directions
http://www.ember-cli.com/#upgrading

Put back Typekit tags

## Packages used and should be reinstalled

`npm install --save-dev ember-cli-sass`
(https://www.npmjs.com/package/ember-cli-sass)

`ember install:addon ember-cli-coffeescript`
(https://www.npmjs.com/package/ember-cli-coffeescript)

`npm install --save-dev ember-marked`
(https://github.com/huafu/ember-marked)

`npm install ember-cli-deploy --save-dev`
`npm install ember-deploy-s3 --save-dev`
`npm install ember-deploy-s3-index --save-dev`
http://kerrygallagher.co.uk/deploying-an-ember-cli-application-to-amazon-s3/
https://github.com/ember-cli/ember-cli-deploy

`bower install --save-dev bourbon`
`bower install --save-dev neat`

