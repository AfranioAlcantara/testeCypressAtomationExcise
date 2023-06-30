import { Given,When,Then,} from "@badeball/cypress-cucumber-preprocessor";


When(/^preencher os campos (.*) e (.*) com nomes invalidos$/, (nome, email) => {
	cy.get('[data-qa="signup-name"]').type(nome)
    cy.get('[data-qa="signup-email"]').type(email)
    cy.get('[data-qa="signup-button"]').click() 
});

Then(/^deverei receber uma menasgem de erro$/, () => {
	return true;
});
