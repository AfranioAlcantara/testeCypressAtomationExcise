
Feature: tela de cadastro

    como cliente quero me cadastrar no site Automation Excise
    para realizar minhas compras com segurança
    Criterios de aceite
    1. o cadastro deve ser feito com email unico nao podendo se repetir no banco de dados
    2. os campos de nome e email são obrigatorios
    3. os campos de informação dentro do formulario de cadastro com * são obrigatorios
    então não podem permanecer vasios 

Scenario: validação do email existente
   
   Given que o clinete acesse o site Automation Excise
   And realize o seu cadastro com sucesso
   When tentar se cadastrar novamente
   Then ele devera receber uma mensagem de que o email ja existe

Scenario: validação do campo obrigatorio primeiro nome
   
   Given que o clinete acesse o site Automation Excise
   And faça o pre cadastro
   And preencha todos os campos do formulario exceto o campo primeiro nome
   When tentar se cadastrar
   Then ele devera receber uma mensagem de que o campo primeiro nome é obrigatrio

Scenario: validação do campo obrigatorio senha
   
   Given que o clinete acesse o site Automation Excise
   And faça o pre cadastro
   And preencha todos os campos do formulario exceto o campo senha
   When tentar se cadastrar
   Then ele devera receber uma mensagem de que o campo senha é obrigatrio


Scenario Outline: testes do campo nome com informações invalidas

    Given que o clinete acesse o site Automation Excise
    When preencher os campos <nome> e <email> com nomes invalidos
    Then deverei receber uma menasgem de erro
Examples:
    | nome | email |
    | a  | ttrsgt@testestes.com|
    | {insert}  | ttrsgt@testestes.com|
    | abf  | ttrsgt@testestes.com|
    | ab123456  | ttrsgt@testestes.com|
    | sadwadawdadwadwadadwasdwadwadasdawa  | ttrsgt@testestes.com|


