---
to: cypress/core/pageObject/elements/pageElements.js
force: true
---
// You can add multiple elements for different page/ module

const googleInput = 'textarea[title="Search"]'
const downloadLinkDemo = 'tbody > :nth-child(1) > :nth-child(2) > a'

const defaultElement = {
    googleInput,
    downloadLinkDemo,


}

module.exports = defaultElement



