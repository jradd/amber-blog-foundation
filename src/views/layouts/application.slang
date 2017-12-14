doctype html
html
  head
    title Amber_blog using Amber
    meta charset="utf-8"
    meta http-equiv="X-UA-Compatible" content="IE=edge"
    meta name="viewport" content="width=device-width, initial-scale=1"
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css" integrity="sha256-itWEYdFWzZPBG78bJOOiQIn06QCgN/F0wMDcC4nOhxY=" crossorigin="anonymous" />
    link rel="stylesheet" href="/scss/app.scss"

  body
    div.masthead
      div.container
        nav.nav
          == render_template "layouts/_nav.slang"
    div.container
      div.row
      - flash.each do |key, value|
        div class="alert alert-#{ key }"
          p = flash[key]
      div.row
        div.col-sm-12.main
          == content

    script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
    script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js" integrity="sha256-Nd2xznOkrE9HkrAMi4xWy/hXkQraXioBg9iYsBrcFrs=" crossorigin="anonymous"
    script src="/js/app.js"


