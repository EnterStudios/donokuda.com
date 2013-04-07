# console.log fix for IE
window.log = (args...) =>
  try
    console.log args...
  catch e

$(document).ready ->

  site =

    setup: ->
      workPreviewNodes = $('#selectedWork ul').children()
      if workPreviewNodes.length > 12
        for n in [12..workPreviewNodes.length]
          $('#selectedWork ul').children().eq(n).remove()


  portfolio =

    setup: ->

      projectWindowLocations = new Array

      # check if hash exists in URL
      if $.isEmptyObject $("#portfolioNav .pagination").find("[href='#{ window.location.hash }']")
        # Put 'active' class on first pagination
        $('#portfolioNav').children('.pagination').first().addClass('active')
      else
        $("#portfolioNav .j_projectPaginationLink[href='#{ window.location.hash }']").closest(".pagination").addClass "active"

      # Set up hover event on pagination to preview name of project
      #
      $('#portfolioNav').children('.pagination').mouseenter ->
        $('.j_portfolioMiniHeaderTitle').text($(this).data('name'))

      $('#portfolioNav').children('.pagination').mouseleave ->
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

  site.setup()
  portfolio.setup()
