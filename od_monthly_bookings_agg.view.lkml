view: od_monthly_bookings_agg  {
  sql_table_name: 'MIDT_CONSUMPTION.CLIENT_AIRPORT_PAIR_DIM' ;;

  dimension: GDS_ID {
    type: 'string'
    primary_key: 'yes'
    sql: {$Table}.GDS_ID
  }

  dimension: Departure_Date_key {
    type: 'date'
    primary_key: 'no'
    sql: {$Table}.DEPARTURE_DATE
  }

  dimension: Passenger_Count {
    type: 'number'
    primary_key: 'no'
    sql: {$Table}.PASSENGER_COUNT
  }
}