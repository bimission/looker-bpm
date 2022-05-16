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
      form_param: {
        name: "title"
        type: string
        label: "Title:"
        required: yes
        default: "Negative review about host friendliness"
      }
      form_param: {
        name: "body"
        type:  textarea
        label: "Message body:"
        required:  yes
        default: "Hello! You are receiving this email because you are registered as the host of ${} apartment in our Customer Satisfaction Monitor. Your guests posted few negative reviews about your property recetly."
      }
  }
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
