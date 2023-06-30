import { Given,When,Then,} from "@badeball/cypress-cucumber-preprocessor";



Given(/^que o clinete acesse o site Automation Excise$/, () => {
	cy.visit('/login')
});

When(/^realize o seu cadastro com sucesso$/, () => {
	cy.get('[data-qa="signup-name"]').type('arvoredetresmertros')
    cy.get('[data-qa="signup-email"]').type('trarvoredetresmertrosemeiio@ggbol.com')
    cy.get('[data-qa="signup-button"]').click()

    cy.get('#id_gender1').click()
    cy.get('[data-qa="password"]').type('Aa@123texto')
    cy.get('[data-qa="days"]').select('10')
    cy.get('[data-qa="months"]').select('February')
    cy.get('[data-qa="years"]').select('1998')
    cy.get('#newsletter').click()
    cy.get('#optin').click()
    cy.get('[data-qa="first_name"]').type('arvoredetresmertros')
    cy.get('[data-qa="last_name"]').type('mudinhade20cm')
    cy.get('[data-qa="company"]').type('madereira')
    cy.get('[data-qa="address"]').type('rua dos bobos')
    cy.get('[data-qa="address2"]').type('numero zero')
    cy.get('[data-qa="country"]').select('New Zealand')
    cy.get('[data-qa="state"]').type('bem ali')
    cy.get('[data-qa="city"]').type('la cula')
    cy.get('[data-qa="zipcode"]').type('6055887798')
    cy.get('[data-qa="mobile_number"]').type('9855887744')

    cy.get('[data-qa="create-account"]').click()

});

When(/^tentar se cadastrar novamente$/, () => { 
    cy.get('.nav > :nth-child(4) > a').click()
    cy.get('.shop-menu > .nav > :nth-child(4) > a').click()
    cy.get('[data-qa="signup-name"]').type('arvoredetresmertros')
    cy.get('[data-qa="signup-email"]').type('trarvoredetresmertrosemeiio@ggbol.com')
    cy.get('[data-qa="signup-button"]').click()
});

Then(/^ele devera receber uma mensagem de que o email ja existe$/, () => {
	cy.get('.signup-form > form > p').should('have.text','Email Address already exist!')
});


