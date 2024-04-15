---
to: "<%= configure ? 'cypress.env.json' : null %>"
---

{
    "baseUrl": "https://<%= baseUrl %>/",
    "username": "enter username",
    "password": "enter password",
    "downloadDemoSite": "https://demo.imacros.net/Automate/Downloads",
      "testrail": {
        "domain": "Enter your domain e.g. https://sample.testrail.io/",
        "username": "Enter username",
        "password": "Enter password",
        "suiteId": 1,
        "projectId": 1,
        "runIncludeAll": false,
        "screenshots": true,
        "closeRun": true
      },
      "retries": {
        "runMode": 1,
        "openMode": 0
    }
}


