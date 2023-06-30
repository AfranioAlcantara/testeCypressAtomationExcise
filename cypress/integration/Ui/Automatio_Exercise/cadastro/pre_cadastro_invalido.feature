Feature: tela de cadastro

    como cliente quero me cadastrar no site Automation Excise
    para realizar minhas compras com segurança
    Criterios de aceite
    1. o cadastro deve ser feito com email unico nao podendo se repetir no banco de dados
    2. os campos de nome e email são obrigatorios
    3. os campos de informação dentro do formulario de cadastro com * são obrigatorios
    então não podem permanecer vasios 
Scenario Outline: testes do campo email com informações invalidas

    Given que o clinete acesse o site Automation Excise
    When preencher os campos <nome> e <email> com emails invalidos
    Then deverei receber uma menasgem de erro
Examples:
    | nome | email |
    | a  | t@testestes.com|
    | aaaa  | ttrsgt@testestescom|
    | abf  | ttrsgt@testestes|
    | ab123456  | ttrsgttestestes.com|
    | sadwadawdadwadwadadwasdwadwadasdawa  |gt@te.com|
    | sadwadawdadwadwadadwasdwadwadasdawa  |gt@tecom|
    | sadwadawdadwadwadadwasdwadwadasdawa  |gtte.com|
    | sadwadawdadwadwadadwasdwadwadasdawa  |andowandowandaoidnwoaidnowadnaoidnwoiadnaown@gtte.com|