- view: rch_studentinteraction
  sql_table_name: DW.RCH_STUDENTINTERACTION
  fields:
  
  - dimension: authors
    type: string
    sql: ${TABLE}."AUTHORS"

  - dimension: cengageacademicterm
    type: string
    sql: ${TABLE}."CENGAGEACADEMICTERM"

  - dimension: city
    type: string
    sql: ${TABLE}."CITY"

  - dimension: course
    type: string
    sql: ${TABLE}."COURSE"

  - dimension: coursearea
    type: string
    sql: ${TABLE}."COURSEAREA"

  - dimension: coursekey
    type: string
    sql: ${TABLE}."COURSEKEY"

  - dimension: coursename
    type: string
    sql: ${TABLE}."COURSENAME"

  - dimension: discipline
    type: string
    sql: ${TABLE}."DISCIPLINE"

  - dimension: duration
    type: string
    sql: ${TABLE}."DURATION"

  - dimension: event_day
    type: string
    sql: ${TABLE}."EVENT_DAY"

  - dimension: institutionname
    type: string
    sql: ${TABLE}."INSTITUTIONNAME"

  - dimension: isbn
    type: string
    sql: ${TABLE}."ISBN"

  - dimension: learningcourse
    type: string
    sql: ${TABLE}."LEARNINGCOURSE"

  - dimension: majorsubjectmatter
    type: string
    sql: ${TABLE}."MAJORSUBJECTMATTER"

  - dimension: minorsubjectmatter
    type: string
    sql: ${TABLE}."MINORSUBJECTMATTER"

  - dimension: postalcode
    type: string
    sql: ${TABLE}."POSTALCODE"

  - dimension: productfamily
    type: string
    sql: ${TABLE}."PRODUCTFAMILY"

  - dimension: ref_id
    type: string
    sql: ${TABLE}."REF_ID"

  - dimension: region
    type: string
    sql: ${TABLE}."REGION"

  - dimension: session
    type: string
    sql: ${TABLE}."SESSION"

  - dimension: title
    type: string
    sql: ${TABLE}."TITLE"

  - dimension: user_guid
    type: string
    sql: ${TABLE}."USER_GUID"

  - measure: activity
    type: sum
    sql: ${TABLE}."ACTIVITY"

  - measure: aplia
    type: sum
    sql: ${TABLE}."APLIA"

  - measure: assessment
    type: sum
    sql: ${TABLE}."ASSESSMENT"

  - measure: atp
    type: sum
    sql: ${TABLE}."ATP"

  - measure: bookmark
    type: sum
    sql: ${TABLE}."BOOKMARK"

  - measure: bookmarks
    type: sum
    sql: ${TABLE}."BOOKMARKS"

  - measure: cnow_hw
    type: sum
    sql: ${TABLE}."cnow_hw"

  - measure: connectyard_learner
    type: sum
    sql: ${TABLE}."connectyard_learner"

  - measure: day_of_course
    type: sum
    sql: ${TABLE}."DAY_OF_COURSE"

  - measure: dictionary
    type: sum
    sql: ${TABLE}."DICTIONARY"

  - measure: diet_wellness_plus
    type: sum
    sql: ${TABLE}."diet_wellness_plus"

  - measure: evernote
    type: sum
    sql: ${TABLE}."EVERNOTE"

  - measure: faq
    type: sum
    sql: ${TABLE}."FAQ"

  - measure: flashcards
    type: sum
    sql: ${TABLE}."FLASHCARDS" + ${TABLE}."FLASHCARD" + ${TABLE}."flash_cards"

  - measure: flashnotes
    type: sum
    sql: ${TABLE}."FLASHNOTES"

  - measure: frequency
    type: sum
    sql: ${TABLE}."FREQUENCY"

  - measure: glossary
    type: sum
    sql: ${TABLE}."GLOSSARY"

  - measure: google_doc
    type: sum
    sql: ${TABLE}."google_doc"

  - measure: google_docs
    type: sum
    sql: ${TABLE}."google_docs"

  - measure: gradebook
    type: sum
    sql: ${TABLE}."GRADEBOOK"

  - measure: hide
    type: sum
    sql: ${TABLE}."HIDE"

  - measure: highlight
    type: sum
    sql: ${TABLE}."HIGHLIGHT3" + ${TABLE}."HIGHLIGHT4"

  - measure: homework
    type: sum
    sql: ${TABLE}."HOMEWORK"

  - measure: inline_assignment
    type: sum
    sql: ${TABLE}."inline_assignment"

  - measure: intensity
    type: sum
    sql: ${TABLE}."INTENSITY"

  - measure: interacted
    type: sum
    sql: ${TABLE}."INTERACTED"

  - measure: kaltura
    type: sum
    sql: ${TABLE}."KALTURA"

  - measure: lams
    type: sum
    sql: ${TABLE}."LAMS"

  - measure: latency
    type: sum
    sql: ${TABLE}."LATENCY"

  - measure: launch
    type: sum
    sql: ${TABLE}."LAUNCH"

  - dimension: length_of_course
    type: string
    sql: ${TABLE}."LENGTH_OF_COURSE"

  - measure: login
    type: sum
    sql: ${TABLE}."LOGIN3" + ${TABLE}."LOGIN4" + ${TABLE}."Mindtap_Login"

  - measure: media
    type: sum
    sql: ${TABLE}."MEDIA3" + ${TABLE}."MEDIA4"

  - measure: message_center
    type: sum
    sql: ${TABLE}."message_center"

  - measure: messagecenter
    type: sum
    sql: ${TABLE}."MESSAGECENTER"

  - measure: mindtapinstructorresourcecenter
    type: sum
    sql: ${TABLE}."MINDTAPINSTRUCTORRESOURCECENTER"

  - measure: my_notes
    type: sum
    sql: ${TABLE}."my_notes"

  - measure: navigated
    type: sum
    sql: ${TABLE}."NAVIGATED"

  - measure: open
    type: sum
    sql: ${TABLE}."OPEN"

  - measure: other
    type: sum
    sql: ${TABLE}."OTHER"

  - measure: pages_read
    type: sum
    sql: ${TABLE}."PAGES_READ"

  - measure: profile_plus
    type: sum
    sql: ${TABLE}."profile_plus"

  - measure: progress
    type: sum
    sql: ${TABLE}."PROGRESS"

  - measure: quicknote
    type: sum
    sql: ${TABLE}."QUICKNOTE3" + ${TABLE}."QUICKNOTE4"

  - measure: reading
    type: sum
    sql: ${TABLE}."READING3" + ${TABLE}."READING4"

  - measure: readspeaker
    type: sum
    sql: ${TABLE}."READSPEAKER"

  - measure: resource
    type: sum
    sql: ${TABLE}."RESOURCE"

  - measure: rssfeed
    type: sum
    sql: ${TABLE}."RSSFEED" + ${TABLE}."rss_feed"

  - measure: search3
    type: sum
    sql: ${TABLE}."SEARCH3" + ${TABLE}."SEARCH4"

  - measure: studyhub_mindtap
    type: sum
    sql: ${TABLE}."studyhub_mindtap"

  - measure: submit
    type: sum
    sql: ${TABLE}."SUBMIT"

  - measure: system
    type: sum
    sql: ${TABLE}."SYSTEM"

  - measure: systemcheck
    type: sum
    sql: ${TABLE}."SYSTEMCHECK"

  - measure: time_in_activity
    type: sum
    sql: ${TABLE}."Time_in_Activity"

  - measure: time_in_mindtap
    type: sum
    sql: ${TABLE}."time_in_mindtap" + ${TABLE}."TIME-IN-MINDTAP"

  - measure: total_session_time
    type: sum
    sql: ${TABLE}."Total_Session_Time"

  - measure: view
    type: sum
    sql: ${TABLE}."VIEW"

  - measure: web_link
    type: sum
    sql: ${TABLE}."web_link"

  - measure: youseeu
    type: sum
    sql: ${TABLE}."YOUSEEU"

  - measure: count
    type: count
    drill_fields: [coursename, institutionname]

