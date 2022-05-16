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
      label: "Notify Host (Email)"
      url: "https://example.com/posts"
      icon_url: "https://cdn-assets-cloud.frontify.com/s3/frontify-cloud-files-us/eyJwYXRoIjoiZnJvbnRpZnlcL2FjY291bnRzXC84MVwvMTY2NjYzXC9wcm9qZWN0c1wvMjUxMDIzXC9hc3NldHNcLzk4XC80MzYyNTU2XC8zNDQyYjJlYzUzODNmYzg2MmQxMjk3Y2JlOGY1YmMwMC0xNTkxNjkxNDA4LnN2ZyJ9:frontify:C1vZrQEKNC4l1znDXt-NwlBgp7nH9W_C1sfWhZVJns8?width=64"
      param: {
        name: "name string"
        value: "value string"
      }
      form_param: {
        name: "title"
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
