class LoginPage {
    login(username, password) {
      cy.visit({ url: "/", failOnStatusCode: false });
    // //   cy.visit({ url: "http://www.saucedemo.com", failOnStatusCode: false });
    //   cy.visit(Cypress.env("baseUrl"))
      cy.get("#user-name").type(username);
      cy.get("#password").type(password);
      cy.get("#login-button").click();
    }
  }
  const loginPage = new LoginPage();
  export default loginPage;
  