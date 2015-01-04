change_window = (screen, image, black, container) ->
  h = screen.height()
  if h > 400
    image.css("height", h)
    black.css("height", h)
    container.css("height", h)


change_static = (head, main, image, screen) ->
  top = screen.scrollTop()
  height = parseInt(image.css("height"))
  margin_bottom = "5000px"
  if top > height + 500
    main.css("position", "static")
    main.css("margin-top", "500px")
    head.css("margin-bottom", "0px")
  else
    main.css("position", "fixed")
    main.css("margin-top", "0px")
    head.css("margin-bottom", margin_bottom)

toggle_modal = (modal) ->
  modal.fadeToggle()

ready_index = ->
  if $("#head-container").length > 0
    screen = $(window)
    image = $("#index-image")
    black = $("#index-black")

    container = $("#index-head-content")
    main_wrapper = $("#main-wrapper")
    head_wrapper = $("#head-container")

    contact = $("#contact-link")
    modal = $("#modal-container")
    modal_content = $("#modal-content-container")

    change_window screen, image, black, container

    screen.resize ->
      change_window screen, image, black, container

    change_static head_wrapper, main_wrapper, image, screen

    screen.scroll ->
      change_static head_wrapper, main_wrapper, image, screen

    contact.click (e) ->
      # e.preventDefault()
      # toggle_modal modal
      smoothScroll("contact-section-container")

    modal.click (e) ->
      e.stopPropagation()
      modal.fadeToggle()

    modal_content.click (e) ->
      e.stopPropagation()


$(document).ready ready_index
$(document).on 'page:load', ready_index
