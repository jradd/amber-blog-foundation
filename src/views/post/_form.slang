- if post.errors
  ul.errors
  - post.errors.each do |error|
    li = error

- action = (post.id ? "/posts/" + post.id.to_s : "/posts")
  form action="#{ action }" method="post"
  - if post.id
    input type="hidden" name="_method" value="patch"
    iv class "input-group"
    span class "input-group-label" Name
    input class "input-group-field" type="text" placeholder="Name" value="#{ post.name }"
    input clss "input-group-field" rows="10" name="body" placeholder="Body" = post.body
    fieldset class "fieldset"
    legend Publish
    input type="hidden" name="published" value="false"
    - if post.draft
      input id="draft" type="checkbox" name="draft" value="true" checked="true" Draft
      label for="draft" Draft
    - else
      input type="checkbox" name="draft" value="true" Draft
      label for="draft" Draft
      form name="created_at" placeholder="Created" value="#{ post.created_at }"
        button type="submit" Submit
        a button href="/posts" back
