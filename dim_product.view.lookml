- view: dim_product
  label: 'Product'
  sql_table_name: DW.DIM_PRODUCT
  fields:

  - dimension: authors
    type: string
    sql: ${TABLE}.AUTHORS

  - dimension: course
    type: string
    sql: ${TABLE}.COURSE

  - dimension: coursearea
    type: string
    sql: ${TABLE}.COURSEAREA

  - dimension: coursearea_pt
    type: string
    sql: ${TABLE}.COURSEAREA_PT

  - dimension: discipline
    type: string
    sql: ${TABLE}.DISCIPLINE

  - dimension: discipline_pt
    type: string
    sql: ${TABLE}.DISCIPLINE_PT

  - dimension: division_cd
    type: string
    sql: ${TABLE}.DIVISION_CD

  - dimension: division_de
    type: string
    sql: ${TABLE}.DIVISION_DE

  - dimension: dw_ldid
    type: string
    sql: ${TABLE}.DW_LDID

  - dimension_group: dw_ldts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS

  - dimension: edition
    type: string
    sql: ${TABLE}.EDITION

  - dimension: iac_isbn
    type: string
    sql: ${TABLE}.IAC_ISBN

  - dimension: isbn10
    type: string
    sql: ${TABLE}.ISBN10

  - dimension: isbn13
    type: string
    sql: ${TABLE}.ISBN13

  - dimension: islatestedition
    type: string
    sql: ${TABLE}.ISLATESTEDITION

  - dimension_group: loaddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOADDATE

  - dimension: majorsubjectmatter
    type: string
    sql: ${TABLE}.MAJORSUBJECTMATTER

  - dimension: mediatype
    type: string
    sql: ${TABLE}.MEDIATYPE

  - dimension: mindtap_isbn
    type: string
    sql: ${TABLE}.MINDTAP_ISBN

  - dimension: minorsubjectmatter
    type: string
    sql: ${TABLE}.MINORSUBJECTMATTER

  - dimension: pac_isbn
    type: string
    sql: ${TABLE}.PAC_ISBN

  - dimension: product
    type: string
    sql: ${TABLE}.PRODUCT

  - dimension: product_skey
    type: string
    sql: ${TABLE}.PRODUCT_SKEY

  - dimension: productfamily
    type: string
    sql: ${TABLE}.PRODUCTFAMILY

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID
    primary_key: true

  - dimension: public_coretext_isbn
    type: string
    sql: ${TABLE}.PUBLIC_CORETEXT_ISBN

  - dimension: publicationgroup
    type: string
    sql: ${TABLE}.PUBLICATIONGROUP

  - dimension: publicationseries
    type: string
    sql: ${TABLE}.PUBLICATIONSERIES

  - dimension: techproductcode
    type: string
    sql: ${TABLE}.TECHPRODUCTCODE

  - dimension: techproductdescription
    type: string
    sql: ${TABLE}.TECHPRODUCTDESCRIPTION

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - dimension: titleshort
    type: string
    sql: ${TABLE}.TITLESHORT

  - measure: count
    type: count
    drill_fields: []

