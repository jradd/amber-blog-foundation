p = post.name
p = post.body
p = post.draft
p
  a href "/posts" class "button" back
    a href "/posts/#{ post.id }/edit" class "button" edit
      a href "/posts/#{ post.id }?_method=delete" class "button" onclick "return confirm('Are you sure?');" delete
