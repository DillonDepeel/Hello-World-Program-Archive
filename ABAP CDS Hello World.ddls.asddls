//pulled from github.com/GAL1LAO/Programmier_Projekt_bis_28.01.2022/blob/ff9a912e132d0ea39d0a49b0ca27d3a09629c67d/src/z02_test_that_will_be_deleted.ddls.asddls
@AbapCatalog.sqlViewName: 'Z02HELLO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'hello'
define view Z02HELLO from sbook {
    key customid
}
