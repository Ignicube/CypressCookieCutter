---
to: cypress/fixtures/<%- project %>/credentials.json
---

<% const environments = ["staging", "release", "production"] %>
{
  <% environments.forEach((env, index) => { %>
  "<%= env %>": {
    "primary": {
      "name": "username",
      "email": "test@testdomain.com",
      "password": "password"
    },
    "secondary": {
      "name": "username",
      "email": "test@testdomain.com",
      "password": "password"
    }
  }<%= environments.length - 1 === index ? '': ',' -%>
  <% }) %>
}

