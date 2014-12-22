change_window = (screen, image, black, container) ->
  h = screen.height()
  if h > 300
    image.css("height", h)
    black.css("height", h)
    container.css("height", h)
    console.log "#{h}"


change_static = (head, main, image, screen) ->
  top = screen.scrollTop()
  height = parseInt(image.css("height"))
  margin_bottom = "5000px"
  if top > height
    main.css("position", "static")
    head.css("margin-bottom", "0px")
  else
    main.css("position", "fixed")
    head.css("margin-bottom", margin_bottom)

ready_index = ->
  if $("#head-container").length > 0
    screen = $(window)
    image = $("#index-image")
    black = $("#index-black")
    container = $("#index-head-content")
    main_wrapper = $("#main-wrapper")
    head_wrapper = $("#head-container")

    change_window screen, image, black, container

    screen.resize ->
      change_window screen, image, black, container

    change_static head_wrapper, main_wrapper, image, screen

    screen.scroll ->
      change_static head_wrapper, main_wrapper, image, screen



$(document).ready ready_index
$(document).on 'page:load', ready_index
