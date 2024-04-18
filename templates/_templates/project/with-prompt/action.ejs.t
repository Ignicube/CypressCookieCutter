---
to: cypress/core/pageObject/actions/pageActions.js
force: true
---
// This is default scanerio, multiple actions can be added as required for testcase

import * as elements from '../elements'
import * as labels from '../labels'
import * as pages from '../pages'
import data from '../../../fixtures/<%- project %>/data'


const verifyDefaultSccanerio = () => {

    pages.generalActions.clickButtonUsingLocator(elements.pageElements.googleInput)
    pages.generalActions.typeInInput(elements.pageElements.googleInput, data.defaultData.input)
    pages.generalActions.clickButtonUsingLabel(labels.pageLabels.googleSearchLabel)
}

const verifyPageURL = () => {

    pages.generalActions.verifyUrl((Cypress.env('baseUrl')))
}

const xpath = () => {

    cy.xpath("//h2[contains(text(),'Downloads')]").should('be.visible')
}

const verifyDownloads = () => {

    cy.visit((Cypress.env('downloadDemoSite')))
    pages.generalActions.clickButtonUsingLocator(elements.pageElements.downloadLinkDemo)
    cy.verifyDownload('Download.zip')
}

const pageActions = {

    verifyDefaultSccanerio,
    verifyPageURL,
    xpath,
    verifyDownloads

}

export default pageActions


