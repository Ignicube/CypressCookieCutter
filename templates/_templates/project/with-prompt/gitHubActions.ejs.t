---
to: "<%= github ? '.github/workflows/main.yml' : null %>"
---

name: Cypress test (push)
on: [push]
jobs:
  Cypress-Test:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout GitCode
        uses: actions/checkout@v4

      - name: Run Cypress Test
        uses: cypress-io/github-action@v4
        with:
          command: npx cypress run
          browser: chrome