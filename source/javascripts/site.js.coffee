# console.log fix for IE
window.log = (args...) =>
  try
    console.log args...
  catch e

$(document).ready ->

  projectWindowLocations = new Array

  portfolio =

    setup: ->
      console.log "start setup"

      # Put 'active' class on first pagination
      #
      $('#portfolioNav').children('.pagination').first().addClass('active')

      # Set up hover event on pagination to preview name of project
      #
      $('#portfolioNav').children('.pagination').mouseenter ->
        console.log "Mouse Enter"
        $('.j_portfolioMiniHeaderTitle').text($(this).data('name'))

      $('#portfolioNav').children('.pagination').mouseleave ->
        console.log "Mouse Leave"
        $('.j_portfolioMiniHeaderTitle').text 'Selected Work'
      
      # Set up ScrollTo events to project pagination in miniheader
      #
      $('#portfolioNav').children('.pagination').click ->

        selectedProject = $('#portfolioNav').children('.pagination').index(this)
        $(window).scrollTo $('.project')[selectedProject], 500, offset: 1

      # Project Pagination Scrollspy
      #
      $(window).load ->
        $('#portfolio').children('.project').map (index, value)->
          projectWindowLocations.push $(this).offset().top

      lastScrolledProjectLength = 0
      setScrolledProjectLength = (newValue) ->
        lastScrolledProjectLength = newValue

      $(window).bind 'scroll', ->
        scrolledProject = new Array

        $(projectWindowLocations).each (index, value) ->
          scrolledProject.push true if $(window).scrollTop() >= value

        if scrolledProject.length isnt lastScrolledProjectLength
          setScrolledProjectLength(scrolledProject.length)
          unless scrolledProject.length is 0
            $('#portfolioNav').children('.pagination').removeClass('active')
            $('#portfolioNav').children('.pagination').eq([scrolledProject.length] - 1).addClass('active')

  portfolio.setup()
