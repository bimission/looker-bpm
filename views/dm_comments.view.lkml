view: dm_comments {
  sql_table_name: `ibpa-demo.commentsnlu.dm_comments`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: is_clean {
    type: yesno
    sql: ${TABLE}.clean ;;
  }

  dimension: review {
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
    hidden:  yes
    type: number
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: is_nice {
    type: number
    sql: ${TABLE}.nice ;;
  }

  dimension: is_noisy {
    type: number
    sql: ${TABLE}.noisy ;;
  }

  dimension: is_quiet {
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

  dimension: is_small {
    type: yesno
    sql: ${TABLE}.small ;;
  }

  dimension: is_spacious {
    type: yesno
    sql: ${TABLE}.spacious ;;
  }

  dimension: review_translation {
    type: string
    sql: ${TABLE}.translation ;;
  }

  dimension: is_valuable {
    type: yesno
    sql: ${TABLE}.value ;;
  }

  dimension: has_nice_view {
    type: yesno
    sql: ${TABLE}.view ;;
  }

  measure: count {
    type: count
    drill_fields: [reviewer_name, name]
  }
}
