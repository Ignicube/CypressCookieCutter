---
to: cypress/e2e/<%- project %>/default.cy.js
---
// This is default spec contains before and after hooks and also with an it block


/// <reference types='cypress-xpath'/>

import * as pages from '../../core/pageObject/pages'

Cypress._.times(1, () => {
    describe('Test Suit Name Here', {
        testIsolation: false
    }, () => {
        before(() => {
            // Will run before testcase execution
            cy.visit(Cypress.env('baseUrl'))
        })
        context('Context Name Here', () => {
            // Independant testcase
            it('C10: TestCase Name Here', () => {
                pages.pageActions.verifyPageURL()
            })
            after(() => {
                // Will run after testcase execution
            })
        })
    })
})

Cypress._.times(1, () => {
    describe('Plugins Demo', {
        testIsolation: false
    }, () => {
        before(() => {
            cy.visit(Cypress.env('downloadDemoSite'))
        })
        it('Xpath', () => {
            pages.pageActions.xpath()
        })
        it('Verify Download', () => {
            pages.pageActions.verifyDownloads()
        })

    })
})


