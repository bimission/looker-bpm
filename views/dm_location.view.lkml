view: dm_location {
  sql_table_name: `ibpa-demo.commentsnlu.dm_location`
    ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: lattitude {
    type: number
    sql: ${TABLE}.lattitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
