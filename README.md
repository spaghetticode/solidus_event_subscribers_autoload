# Solidus event subscribers autoload demo

This rails app show-cases the Solidus event subscribers autoload feature.

It can be used to prove that the feature is properly working before merging
the relevant PRs on Solidus core and Solidus Support projects.

A simple even subscriber is defined within the app, and another one is defined
into the vendored version of `solidus_auth_devise` in `vendor/gems`. These
subscribers will add content to the output coming from the website homepage.

Also, the output will confirm that Solidus core subscribers are correctly
loaded.

A further step in verifying everything works fine  is to edit those subscribers
output text and verify that the updated content is shown on the homepage.

