---
to: cypress.config.js 
force: true
---
// This is some basic configuration for cypress, later on you can change it

const {
  defineConfig
} = require("cypress");

module.exports = defineConfig({
  video: true,
  videoCompression: 0,
  viewportWidth: 1920,
  viewportHeight: 1080,
  pageLoadTimeout: 20000,
  numTestsKeptInMemory: 1,
  chromeWebSecurity: false,
  trashAssetsBeforeRuns: true,
  screenshotOnRunFailure: true,
  defaultCommandTimeout: 50000,  
  retries: {
    runMode: 1,
    openMode: 1,
  },
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      return require('./cypress/plugins/index.js')(on, config)
      on('before:run', (details) => {
        /* code that needs to run before all specs */    
      })
    },
    testIsolation: false,
  },
  experimentalInteractiveRunEvents: false, // use for cypress open mode
});

