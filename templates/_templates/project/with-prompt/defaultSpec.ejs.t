---
to: cypress/e2e/<%- project %>/default.cy.js
---
// This is default spec contains before and after hooks and also with an it block

/// <reference types='cypress'/>
import * as pages from '../../core/pageObject/pages'

Cypress._.times(1, () => {
    describe('Test Suit Name', {
        testIsolation: false
    }, () => {
        before(() => {
            // Will run before testcase execution
            cy.visit(Cypress.env('baseUrl'))
        })
        context('Context Name', () => {
            // Independant testcase
            it('C10: TestCase Name', () => {
                pages.pageActions.verifyPageURL()
            })
        after(() => {
            // Will run after testcase execution
        })
        })
    })
})



