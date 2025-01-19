@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TEST'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zcds_Test_1134 as select from 

/dmo/carrier as a
association [1..1] to /dmo/flight 
on $projection.CarrierId = /dmo/flight.carrier_id
{
key carrier_id as CarrierId,
name as Name,
currency_code as CurrencyCode,
local_created_by as LocalCreatedBy,
local_created_at as LocalCreatedAt,
local_last_changed_by as LocalLastChangedBy,
local_last_changed_at as LocalLastChangedAt,
last_changed_at as LastChangedAt, 
/dmo/flight.carrier_id as CArr

}

//left outer join /dmo/flight as c
//left outer join /dmo/booking as p 
//on p.connection_id = c.connection_id 
//on a.carrier_id = c.carrier_id 
//{
//    a.carrier_id as Carrier_id,
//    p.connection_id as Airport_id,
//    c.seats_occupied as Counter_number 
//}
