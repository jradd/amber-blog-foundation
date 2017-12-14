div class "grid-x grid-margin-4"
  div class "small-2 cell"
    h2 Posts
  div class "small-2 cell"
    a href "/posts/new" class "button" New

div class "grid-x grid-margin-4"
  div class "small-4 cell"

    div class "cell" 
      table class "hover"
      table
        thead
          tr
            th width "150" Name
            th width "300" Body
            th width "100" Draft
            th width "100" Actions
            th width "150" Created
            tbody
            - posts.each do |post|
          tr
            td = post.name
            td = post.body
            td = post.draft
            td = post.created_at
            td
              span
                div class "small button-group"
                  a href "/posts/#{ post.id }" class "button" read
                  a href "/posts/#{ post.id }/edit" class "button" edit
                  a href "/posts/#{ post.id }?_method=delete" class "button" onclick "return confirm('Are you sure?');" delete
