@AbapCatalog.sqlViewName: 'Z02CCUSTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'reads from DS4_I_CustomerTP'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Search.searchable: true
@Metadata.allowExtensions: true
define view Z02_C_CUSTOMERTP as select from DS4_I_CUSTOMERTP
association [*] to Z02_C_BOOKINGTP as _Booking on $projection.CustomerGuid = _Booking.CustomerGuid {
    key CustomerGuid,
    CustomerNumber,
    Form,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    CustomerName,
    Street,
    PostCode,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    City,
    Country,
    Email,
    Telephone,
    Discount,
    /* Associations */
    _Booking
}
