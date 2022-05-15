view: locations {
  sql_table_name: `ibpa-demo.commentsnlu.dm_location`
    ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: location_cooridates {
    type:  location
    sql_latitude:  ${TABLE}.lattitude ;;
    sql_longitude:  ${TABLE}.longitude ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
