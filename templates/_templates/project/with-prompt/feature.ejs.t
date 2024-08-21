---
to: cypress/e2e/<%- project %>/OpenGoogle.feature
---
# This is default feature, you can add multiple features in this file or can create new feature files.

Feature: Open Google

    Scenario: User opens the Google homepage

        Given User opens the google homepage

        When User navigates to the images button

        Then User click on search bar

        And The URL of the page should be "https://www.google.com/imghp?hl=en&ogbl"
