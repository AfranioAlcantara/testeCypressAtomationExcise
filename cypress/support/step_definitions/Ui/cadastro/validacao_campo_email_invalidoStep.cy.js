import { Given,When,Then,} from "@badeball/cypress-cucumber-preprocessor";


When(/^preencher os campos (.*) e (.*) com emails invalidos$/, (nome, email) => {
	cy.get('[data-qa="signup-name"]').type(nome)
    cy.get('[data-qa="signup-email"]').type(email)
    cy.get('[data-qa="signup-button"]').click()
});
