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

const pageActions = {

    verifyDefaultSccanerio,
    verifyPageURL

}

export default pageActions


