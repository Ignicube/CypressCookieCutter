---
to: cypress/core/pageObject/actions/generalActions.js
force: true
---
// Contains some general actions, can be used anytime and also new can be added

const login = () => {
    return cy.adminLogin(Cypress.env('username'), Cypress.env('password'))
}
const getElementUsingLocator = (locator) => {
    return cy.get(locator)
}
const getElementUsingLabel = (label) => {
    return cy.contains(label)
}
const clickButtonUsingLabel = (label) => {
    return cy.contains(label).should('be.visible').click({
        force: true
    })
}
const clickButtonUsingLocator = (locator) => {
    return cy.get(locator).should('be.visible').click({
        force: true
    })
}
const checkBoxUsingLocator = (locator) => {
    return cy.get(locator).should('be.visible').check()
}
const clickandVerifyTextUsingLocator = (locator, value) => {
    return cy.get(locator).should('be.visible').click().should("have.text", value)
}
const VerifyCheckedUsingLocator = (locator) => {
    return cy.get(locator).should('be.visible').and("be.checked")
}
const VerifyNotCheckedUsingLocator = (locator) => {
    return cy.get(locator).should('be.visible').and("not.be.checked")
}
const VerifyCheckedNotVisibleUsingLocator = (locator) => {
    return cy.get(locator).should("be.checked")
}
const clickNthButtonUsingLocator = (locator, index) => {
    return cy.get(locator).eq(index).should('be.visible').click({
        force: true
    })
}
const verifyUrl = (url) => {
    return cy.url().should('include', url)
}
const verifyFieldsLabelUsingLocator = (locator, value) => {
    return cy.get(locator).contains(value)
}
const typeInInput = (locator, text) => {
    return cy.get(locator).click({
        force: true
    }).clear().type(text)
}
const typeInDropdownInput = (dropdown_locator, text) => {
    return cy.get(dropdown_locator).click().type(`${text}{enter}`, {
        delay: 100
    })
}
const typeInDropdownInputAtNthIndex = (dropdown_locator, index, text) => {
    return cy.get(dropdown_locator).eq(index).click().type(`${text}{enter}`, {
        delay: 100
    })
}
const selectDropdownValue = (dropdown_locator, value) => {
    return cy.get(dropdown_locator).select(value)
}
const getNthElementUsingLocator = (locator, index) => {
    return cy.get(locator).eq(index)
}
const verifyInputValue = (locator, value) => {
    return cy.get(locator).should('have.value', value)
}
const verifyNthIndexInputValue = (locator, index, value) => {
    return cy.get(locator).eq(index)
}
const verifyRadioButtonValue = (locator, value) => {
    return cy.get(locator).should("be.visible").should('have.text', value)
}
const verifyFieldValue = (locator, value) => {
    return cy.get(locator).should("be.visible").should('have.text', value)
}
const verifyElementText = (locator, value) => {
    return cy.get(locator).should("be.visible").should('have.text', value)
}
const verifyElementValue = (locator, value) => {
    return cy.get(locator).should("be.visible").should('have.value', value)
}
const verifyElementsText = (locator, text) => {
    return cy.get(locator).contains(text)
}
const verifyNthElementsText = (locator, index, text) => {
    return cy.get(locator).eq(index).contains(text)
}
const verifyInputIsNotEmpty = (locator) => {
    return cy.get(locator).invoke('val').should('not.be.empty')
}
const verifyTextOnPage = (text) => {
    return cy.contains(text).should('be.visible')
}
const clickOutsideOnBody = () => {
    return cy.get('body').click(500, 500)
}
const verifyElementOnPage = (locator) => {
    return cy.get(locator).should('be.visible')
}
const verifyElementIsDisabledUsingLocator = (locator, text) => {
    return cy.get(locator).contains(text).should('be.visible').and('have.class', 'disabled')
}
const verifyOnlyElementIsDisabledUsingLocator = (locator) => {
    return cy.get(locator).should("be.disabled")
}
const verifyOnlyElementNotEnabledUsingLocator = (locator) => {
    return cy.get(locator).should('not.be.enabled')
}
const clickTextElementUsingLocator = (locator, text) => {
    return cy.get(locator).contains(text).should('be.visible').click()
}
const verifyElementDoesNotExistUsingLocator = (locator) => {
    return cy.get(locator).should('not.exist')
}
const waitForTime = (time) => {
    return cy.wait(time)
}
const visitLink = (link) => {
    return cy.visit(link)
}
const uploadFileUsingLocator = (locator, path) => {
    return cy.get(locator).attachFile(path)
}
const uploadFileUsingLocatorDandD = (locator, path) => {
    return cy.get(locator).attachFile(path, {
        action: 'drag-drop'
    })
}
const pageReload = () => {
    return cy.reload()
}
const scrollToTop = () => {
    return cy.scrollTo('top')
}
const scrollToBottom = () => {
    return cy.scrollTo('bottom')
}
const scrollIntoViewText = (text) => {
    return cy.contains(text).scrollIntoView().should('be.visible')
}
const scrollIntoViewElem = (locator) => {
    return cy.get(locator).scrollIntoView({
        duration: 2000
    }).should('be.visible')
}
const scrollIntoBottomUsingLocator = (locator) => {
    return cy.get(locator).scrollTo('bottom')
}
const randomNumberGenerator = (max) => {
    const rand = Math.floor(Math.random() * max);
    return rand
}
const waitToLoadElement = () => {
    cy.wait(5000)
}
const pageGoBackward = (value) => {
    cy.go(value)
}
const verifyHyperLinkUsingLocator = (value) => {
    cy.get(value).should("be.visible").and("have.attr", "href")
}
const dragandDrop = (value, value2) => {
    const dataTransfer = new DataTransfer();
    cy.get(value).trigger('dragstart', {
        dataTransfer
    });

    cy.get(value2).trigger('drop', {
        dataTransfer
    });
}
const dragandDropUsingXpath = (value, value2) => {
    const dataTransfer = new DataTransfer();
    cy.xpath(value).trigger('dragstart', {
        dataTransfer
    });

    cy.get(value2).trigger('drop', {
        dataTransfer
    });
}
const canvasDragandDrop = (value, x, y) => {
    cy.get(value)
        .trigger('mousedown').trigger("mousemove", {
            clientX: x,
            clientY: y
        })
        .trigger("mouseup")
}
const clickButtonUsingXpath = (value) => {
    cy.xpath(value).click()
}
const canvasDragandDropUsingXpath = (value, x, y) => {
    cy.xpath(value)
        .trigger('mousedown').trigger("mousemove", {
            clientX: x,
            clientY: y
        })
        .trigger("mouseup")
}

const generalActions = {

    login,
    getElementUsingLocator,
    getElementUsingLabel,
    clickButtonUsingLabel,
    clickButtonUsingLocator,
    clickNthButtonUsingLocator,
    verifyUrl,
    typeInInput,
    typeInDropdownInput,
    typeInDropdownInputAtNthIndex,
    getNthElementUsingLocator,
    verifyInputValue,
    verifyNthIndexInputValue,
    verifyInputIsNotEmpty,
    verifyElementsText,
    verifyNthElementsText,
    verifyTextOnPage,
    clickOutsideOnBody,
    verifyElementIsDisabledUsingLocator,
    clickTextElementUsingLocator,
    verifyElementDoesNotExistUsingLocator,
    waitForTime,
    visitLink,
    uploadFileUsingLocator,
    pageReload,
    scrollToTop,
    scrollToBottom,
    scrollIntoViewText,
    scrollIntoViewElem,
    scrollIntoBottomUsingLocator,
    randomNumberGenerator,
    verifyOnlyElementIsDisabledUsingLocator,
    verifyFieldsLabelUsingLocator,
    uploadFileUsingLocatorDandD,
    verifyFieldValue,
    verifyElementOnPage,
    waitToLoadElement,
    checkBoxUsingLocator,
    selectDropdownValue,
    verifyRadioButtonValue,
    verifyOnlyElementNotEnabledUsingLocator,
    verifyElementValue,
    VerifyNotCheckedUsingLocator,
    clickandVerifyTextUsingLocator,
    VerifyCheckedUsingLocator,
    pageGoBackward,
    verifyHyperLinkUsingLocator,
    dragandDrop,
    canvasDragandDrop,
    clickButtonUsingXpath,
    canvasDragandDropUsingXpath,
    dragandDropUsingXpath,
    verifyElementText,
    VerifyCheckedNotVisibleUsingLocator
}

export default generalActions