view: locations {
  sql_table_name: `ibpa-demo.commentsnlu.dm_locations`
    ;;

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: location_cooridates {
    type:  location
    sql_latitude:  ${TABLE}.latitude ;;
    sql_longitude:  ${TABLE}.longitude ;;
  }

  dimension: location_address {
    type:  string
    sql:  ${TABLE}.address ;;

    action: {
      label: "Contact Host"
      url: "https://example.com/posts"
      icon_url: "https://looker.com/favicon.ico"
      form_url: "https://example.com/ping/{{ value }}/form.json"
      param: {
        name: "name string"
        value: "value string"
      }
      form_param: {
        name: "Title"
        type: string
        label: "possibly-localized-string"
        required: yes
        default: "Bad review about host friendliness"
      }
  }
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
