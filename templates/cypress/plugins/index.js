const TestRailReporter = require('cypress-testrail');

module.exports = (on, config) => {
  new TestRailReporter(on, config).register();
  return config
}