view: dm_comments {
  sql_table_name: `ibpa-demo.commentsnlu.dm_comments`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: clean {
    type: number
    sql: ${TABLE}.clean ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: date {
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

  dimension: hospitability {
    type: number
    sql: ${TABLE}.hospitability ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: listing_id {
    type: number
    sql: ${TABLE}.listing_id ;;
  }

  dimension: location {
    type: number
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nice {
    type: number
    sql: ${TABLE}.nice ;;
  }

  dimension: noisy {
    type: number
    sql: ${TABLE}.noisy ;;
  }

  dimension: quiet {
    type: number
    sql: ${TABLE}.quiet ;;
  }

  dimension: responsive {
    type: number
    sql: ${TABLE}.responsive ;;
  }

  dimension: reviewer_id {
    type: number
    sql: ${TABLE}.reviewer_id ;;
  }

  dimension: reviewer_name {
    type: string
    sql: ${TABLE}.reviewer_name ;;
  }

  dimension: reviews_id {
    type: number
    sql: ${TABLE}.reviews_id ;;
  }

  dimension: small {
    type: number
    sql: ${TABLE}.small ;;
  }

  dimension: spacious {
    type: number
    sql: ${TABLE}.spacious ;;
  }

  dimension: translation {
    type: string
    sql: ${TABLE}.translation ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: view {
    type: number
    sql: ${TABLE}.view ;;
  }

  measure: count {
    type: count
    drill_fields: [reviewer_name, name]
  }
}
