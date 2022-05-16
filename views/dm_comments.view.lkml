view: reviews {
  sql_table_name: `ibpa-demo.commentsnlu.dm_entities`
    ;;

  dimension: _id {
    hidden: yes
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: review_id {
    type: number
    sql: ${TABLE}.reviews_id ;;
  }


  dimension: review_text {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: review_translation {
    type: string
    sql: ${TABLE}.translation ;;
  }

  dimension_group: review_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }


  dimension: review_language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: review_sentiment {
    type: string
    sql:  CASE WHEN ${TABLE}.bad_host > 0 THEN 'Negative' ELSE 'Positive' END ;;
  }

  dimension: listing_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.listing_id ;;
  }

  dimension: reviewer_id {
    type: number
    sql: ${TABLE}.reviewer_id ;;
  }

  dimension: reviewer_name {
    type: string
    sql: ${TABLE}.reviewer_name ;;
  }

  dimension: location {
    hidden:  yes
    type: number
    sql: ${TABLE}.location ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: is_location_nice {
    type: number
    sql: CASE WHEN ${TABLE}.nice > 0 THEN True ELSE False END ;;
  }

  dimension: is_location_noisy {
    type: number
    sql: CASE WHEN ${TABLE}.noisy > 0 THEN True ELSE False END;;
  }

  dimension: is_location_quiet {
    type: number
    sql: CASE WHEN ${TABLE}.quiet > 0 THEN True ELSE False END  ;;
  }

  dimension: is_location_responsive {
    type: number
    sql: CASE WHEN  ${TABLE}.responsive > 0 THEN True ELSE False END  ;;
  }


  dimension: is_location_small {
    type: yesno
    sql: CASE WHEN${TABLE}.small THEN True ELSE False END;;
  }

  dimension: is_location_spacious {
    type: yesno
    sql: CASE WHEN ${TABLE}.spacious THEN True ELSE False END;;
  }


  dimension: is_location_valuable {
    type: yesno
    sql: CASE WHEN ${TABLE}.value THEN True ELSE False END;;
  }

  dimension: has_location_nice_view {
    type: yesno
    sql: CASE WHEN ${TABLE}.view THEN True ELSE False END;;
  }

  dimension: is_location_clean {
    type: yesno
    sql: CASE WHEN ${TABLE}.clean > 0 THEN True ELSE False END;;
  }

  dimension: is_host_friendly {
    type: yesno
    sql: CASE WHEN ${TABLE}.bad_host > 0 THEN True ELSE False END;;
  }


  dimension: hospitability {
    hidden:  yes
    type: number
    sql: ${TABLE}.hospitability ;;
  }

  dimension: int64_field_0 {
    hidden: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: [reviewer_name, location_name]
  }
}
