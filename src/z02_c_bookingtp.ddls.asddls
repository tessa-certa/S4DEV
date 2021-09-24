@AbapCatalog.sqlViewName: 'Z02CBOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'cds view association to Z02_C_CUSTOMERTP'
@VDM.viewType: #CONSUMPTION
@Metadata.allowExtensions: true
define view Z02_C_BOOKINGTP as select from DS4_I_BOOKINGTP
association [1] to Z02_C_CUSTOMERTP as _Customer
    on $projection.CustomerGuid = _Customer.CustomerGuid {
    key DS4_I_BOOKINGTP.BookingGuid,
    DS4_I_BOOKINGTP.AirlineID,
    DS4_I_BOOKINGTP.ConnectionNumber,
    DS4_I_BOOKINGTP.FlightDate,
    DS4_I_BOOKINGTP.BookingNumber,
    DS4_I_BOOKINGTP.BookingDate,
    DS4_I_BOOKINGTP.Class,
    DS4_I_BOOKINGTP.ForeignCurrencyPayment,
    DS4_I_BOOKINGTP.ForeignCurrency,
    DS4_I_BOOKINGTP.AgencyNumber,
    DS4_I_BOOKINGTP.CustomerGuid,
    DS4_I_BOOKINGTP.IsCancelled,
    /* Associations */
    _Customer
}
