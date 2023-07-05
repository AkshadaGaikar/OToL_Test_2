view: OD_GDS  {
  sql_table_name: 'MIDT_CONSUMPTION.GDS_DIM' ;;

  dimension: GDS_ID {
    type: 'string'
    primary_key: 'yes'
    sql: {$Table}.GDS_ID
  }

  dimension: GDS_TYPE_CODE {
    type: 'string'
    primary_key: 'no'
    sql: {$Table}.GDS_TYPE_CODE
  }

  dimension: GDS_Name {
    type: 'string'
    primary_key: 'no'
    sql: {$Table}.GDS_NAME
  }

  dimension: GDS_Code {
    type: 'string'
    primary_key: 'no'
    sql: {$Table}.GDS_CODE
  }
}