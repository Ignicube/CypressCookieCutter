module.exports = [{
    type: 'input',
    name: 'project',
    message: 'Project name?',
  },
  {
    type: 'input',
    name: 'baseUrl',
    message: 'What is the baseUrl for this project? e.g(www.mydomain.com)',
  },
  {
    type: 'confirm',
    name: 'configure',
    message: 'Do you want configure testrail?',
  },
  {
    type: 'confirm',
    name: 'github',
    message: 'Do you want integrate github action?',
  },
  // {
  //   type: 'input',
  //   name: 'projectId',
  //   message: 'Enter testrails projectId?',
  // },
  // {
  //   type: 'input',
  //   name: 'username',
  //   message: 'Enter testrails username?',
  // },
  // {
  //   type: 'input',
  //   name: 'password',
  //   message: 'Enter testrails password?',
  // },
  // {
  //   type: 'input',
  //   name: 'suiteId',
  //   message: 'Enter testrails suitId?',
  // },
]