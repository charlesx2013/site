change_window = (screen, image, black, container) ->
  h = screen.height()
  if h > 300
    image.css("height", h)
    black.css("height", h)
    container.css("height", h)
    console.log "#{h}"


ready_index = ->
  if $("#head-container").length > 0
    screen = $(window)
    image = $("#index-image")
    black = $("#index-black")
    container = $("#index-head-content")

    change_window screen, image, black, container

    screen.resize ->
      change_window screen, image, black, container


$(document).ready ready_index
$(document).on 'page:load', ready_index
