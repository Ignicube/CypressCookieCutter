---
to: cypress/e2e/<%- project %>/OpenGoogle/OpenGoogle.js
---
// This is default step definition, you can add multiple step definitions in this file or can create new step definitions.

import {
    Given,
    When,
    Then,
    And
}
from 'cypress-cucumber-preprocessor/steps';

Given('User opens the google homepage', () => {
    cy.visit('https://www.google.com/');
});
When('User navigates to the images button', () => {
    cy.get(':nth-child(2) > .gb_V').click();
});
Then('User click on search bar', () => {
    cy.get('textarea[name="q"]').click();
});
And('The URL of the page should be {string}', (expectedUrl) => {
    cy.url().should('eq', 'https://www.google.com/imghp?hl=en&ogbl');
});