view: locations {
  sql_table_name: `ibpa-demo.commentsnlu.dm_locations`
    ;;

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: location_cooridates {
    type:  location
    sql_latitude:  ${TABLE}.lattitude ;;
    sql_longitude:  ${TABLE}.longitude ;;
  }

  dimension: location_address {
    type:  string
    sql:  ${TABLE}.address ;;
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
