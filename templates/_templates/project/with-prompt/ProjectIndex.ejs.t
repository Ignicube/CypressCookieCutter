---
to: cypress/support/e2e/<%= project %>/index.js
---

import commands from './commands'

export default {
  <%= project -%>: {
    ...commands, //
  },
}
