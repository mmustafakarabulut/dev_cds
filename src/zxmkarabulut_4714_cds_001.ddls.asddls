@AbapCatalog.sqlViewName: 'ZXMKB_4714_V_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Örnek CDS - 1'
define view ZXMKARABULUT_4714_CDS_001 as select from ekko
inner join ekpo on ekpo.ebeln = ekko.ebeln
inner join mara on mara.matnr = ekpo.matnr
left outer join makt on makt.matnr = mara.matnr
                    and makt.spras = $session.system_language
left outer join lfa1 on lfa1.lifnr = ekko.lifnr
{
    ekko.ebeln,
    ekpo.ebelp,
    ekpo.matnr,
    makt.maktx,
    ekpo.werks,
    ekpo.lgort,
    ekpo.meins,
    lfa1.lifnr,
    lfa1.name1,
    concat( lfa1.stras,lfa1.mcod3) as adres
}
