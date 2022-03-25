*** Settings ***
Library                 SeleniumLibrary
Library                 FakerLibrary    locale=pt_BR
###Library                 DebugLibrary

### hooks: Onde esta o setup e o teardown
Resource                hooks.robot

### pages: Variaveis de page objects e interacao com as paginas
Resource                ../pages/home.robot

### keywords: Arquivo onde estao as implementacoes das keywords
Resource                ..\\auto\\keywords\\keywords.robot